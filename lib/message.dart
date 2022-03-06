import 'package:autothreader_bot/github.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';
import 'package:nyxx/nyxx.dart';

import 'repo/repo.dart';

class MessageReceiver {
  static final _logger = Logger('MessageReceiver');
  static final _dateFormat = DateFormat('yyyy-MM-dd');

  /// A map of thread IDs to Github Discussion IDs
  final _threads = <Snowflake, String>{};

  /// The client ID assigned by Github
  String? githubClientId;

  final GithubClient github;
  final INyxxWebsocket bot;

  MessageReceiver(this.bot, this.github);

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
    if (channel.channelType == ChannelType.text) {
      return createThread(message, message.content);
    }
    if (channel.channelType == ChannelType.guildPublicThread) {
      return updateThread(message, message.content);
    }
    throw Exception(
      'Could not process message ${message.id}: Invalid channel',
    );
  }

  Future<void> createThread(IMessage message, String content) async {
    _logger.info('Creating thread for message: $message');
    final authorName = message.authorName;

    final creationDate = _dateFormat.format(message.createdAt);
    final threadName = '$authorName ($creationDate)';

    final thread = await message.createAndGetThread(
      ThreadBuilder(threadName)..private = false,
    );
    bot.channels[thread.id] = thread;

    final discussionBody = '''
**User:** ${message.authorName}

$content
''';
    final discussion = await github.createDiscussion(
      category: DiscussionCategory.discord,
      title: threadName,
      body: discussionBody,
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
      'It will be mirrored to the Github Discussions board for viewing '
      'later: $discussionUrl',
    ));
    await threadMessage.suppressEmbeds();
  }

  Future<void> updateThread(IMessage message, String content) async {
    _logger.info('Updating message: $message');
    final thread = message.channel;
    final discussionId = _threads[thread.id];
    if (discussionId == null) {
      _logger.severe('Could not locate discussion ID for thread $thread');
      return;
    }

    final commentBody = '''
**User:** ${message.authorName}

$content
''';
    await github.addDiscussionComment(
      discussionId: discussionId,
      body: commentBody,
    );
  }
}

extension MessageX on IMessage {
  String get authorName => member?.nickname ?? author.username;
}
