import 'package:autothreader_bot/github.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';
import 'package:nyxx/nyxx.dart';
import 'package:nyxx_interactions/nyxx_interactions.dart';

import 'repo/repo.dart';

class MessageReceiver {
  static final _logger = Logger('MessageReceiver');
  static final _dateFormat = DateFormat('yyyy-MM-dd');

  /// A map of thread IDs to Github Discussion IDs
  final _threads = <Snowflake, String>{};

  /// A map of message IDs to the GitHub dicussion comment ID
  final _commentIds = <Snowflake, String>{};

  /// The client ID assigned by Github
  String? githubClientId;

  final GithubClient github;
  final INyxxWebsocket bot;

  MessageReceiver(this.bot, this.github);

  /// Called when using `Autothread` from the context menu.
  Future<void> onAutothread(ISlashCommandInteractionEvent event) async {
    await event.acknowledge(hidden: true);

    Future<void> unresolved() => event.respond(
          MessageBuilder.content('Could not create thread for message'),
          hidden: true,
        );

    final messageId = event.interaction.targetId;
    if (messageId == null) {
      _logger.severe('No message associated with event: $event');
      return unresolved();
    }

    _logger.info('Autothreading message: $messageId');

    final member = event.interaction.memberAuthor;
    if (member == null) {
      _logger.severe('No member associated with event');
      return unresolved();
    }

    final channel = await event.interaction.channel.getOrDownload();
    bot.channels[channel.id] ??= channel;
    final message = await channel.fetchMessage(messageId);

    _logger.info('Received message: $message');
    final guild = await event.interaction.guild?.getOrDownload();

    if (guild == null) {
      _logger.severe('Could not load guild for message $message');
      return unresolved();
    }
    if (message.author.bot) {
      _logger.finer('Skipping ${message.id}: Bot message');
      return unresolved();
    }

    // Channel types: https://discord.com/developers/docs/resources/channel#channel-object-channel-types
    if (channel.channelType != ChannelType.text) {
      return unresolved();
    }

    await createThread(message, member, message.content);
    return event.respond(
      MessageBuilder.content('Successfully created thread'),
      hidden: true,
    );
  }

  Future<void> onMessageReceived(IMessageReceivedEvent event) async {
    _logger.info('Received message: ${event.message}');

    final message = event.message;
    final guild = await message.guild?.getOrDownload();

    if (guild == null) {
      _logger.severe('Could not load guild for message $message');
      return;
    }
    if (message.author.bot) {
      _logger.finer('Skipping ${message.id}: Bot message');
      return;
    }

    final channel = bot.channels[message.channel.id] ?? message.channel;
    // Channel types: https://discord.com/developers/docs/resources/channel#channel-object-channel-types
    if (channel.channelType == ChannelType.guildPublicThread) {
      return updateThread(message, message.content);
    }
  }

  Future<void> createThread(
    IMessage message,
    IMember member,
    String content,
  ) async {
    _logger.info('Creating thread for message: $message');
    final authorName = message.authorName(member);

    final creationDate = _dateFormat.format(message.createdAt);
    final threadName = '$authorName ($creationDate)';

    final thread = await message.createAndGetThread(
      ThreadBuilder(threadName)..private = false,
    );
    bot.channels[thread.id] = thread;

    final discussionBody = '''
**User:** $authorName

$content
''';
    final discussion = await github.createDiscussion(
      category: DiscussionCategory.discord,
      title: threadName,
      body: discussionBody,
      clientMutationId: githubClientId,
    );
    githubClientId ?? discussion.createDiscussion?.clientMutationId;

    final discussionId = discussion.createDiscussion?.discussion?.id;
    if (discussionId == null) {
      throw Exception('Could not create Github discussion');
    }
    _threads[thread.id] = discussionId;

    final discussionUrl = discussion.createDiscussion?.discussion?.url.value;
    if (discussionUrl == null) {
      return;
    }

    final threadMessage = await thread.sendMessage(MessageBuilder.content(
      'This thread was created automatically by the Autothreader bot. '
      'Please post all replies to this thread.\n\n'
      // 'Type `/resolve` to resolve this thread.\n\n'
      'It will be mirrored to the Github Discussions board for viewing '
      'later: $discussionUrl',
    ));
    await threadMessage.suppressEmbeds();
  }

  Future<void> updateThread(
    IMessage message,
    String content,
  ) async {
    _logger.info('Updating message: $message');
    final thread = message.channel;
    final discussionId = _threads[thread.id];
    if (discussionId == null) {
      _logger.severe('Could not locate discussion ID for thread $thread');
      return;
    }

    final commentBody = '''
**User:** ${message.authorName()}

$content
''';
    final comment = await github.addDiscussionComment(
      discussionId: discussionId,
      body: commentBody,
      clientMutationId: githubClientId,
    );
    final commentId = comment.addDiscussionComment?.comment?.id;
    if (commentId == null) {
      throw Exception('Error creating comment');
    }
    githubClientId ?? comment.addDiscussionComment?.clientMutationId;
    _commentIds[message.id] = commentId;
  }

  /// Handles the `/resolve` command by resolving a thread and marking the
  /// last issue in the discussion as the answer.
  Future<void> resolveThread(ISlashCommandInteractionEvent event) async {
    await event.acknowledge(hidden: true);

    Future<void> unresolved() => event.respond(
          MessageBuilder.content('Could not resolve thread'),
          hidden: true,
        );

    final messageId = event.interaction.targetId;
    if (messageId == null) {
      _logger.severe('No message associated with event: $event');
      return unresolved();
    }

    final thread = await event.interaction.channel.getOrDownload();
    final discussionId = _threads[thread.id];
    if (discussionId == null) {
      _logger.severe('Could not locate discussion for thread ${thread.id}');
      return unresolved();
    }
    final commentId = _commentIds[messageId];
    if (commentId == null) {
      _logger.severe('Could not locate comment for message $messageId');
      return unresolved();
    }

    _logger.info('Resolving thread $thread with message $messageId');

    await github.resolveDiscussion(
      commentId: commentId,
      clientMutationId: githubClientId,
    );

    await event.respond(
      MessageBuilder.content('Resolved'),
      hidden: true,
    );
  }
}

extension MessageX on IMessage {
  String authorName([IMember? member]) =>
      (member ?? this.member)?.nickname ?? author.username;
}
