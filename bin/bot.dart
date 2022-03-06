import 'dart:io';

import 'package:intl/intl.dart';
import 'package:logging/logging.dart';
import 'package:nyxx/nyxx.dart';

late final INyxxWebsocket bot;

Future<void> main() async {
  _configure();
  final logger = Logger('main');

  final token = Platform.environment['BOT_TOKEN'];
  if (token == null) {
    logger.severe('No token provided');
    exit(1);
  }

  bot = NyxxFactory.createNyxxWebsocket(
    token,
    GatewayIntents.guilds | GatewayIntents.guildMessages,
  )
    ..registerPlugin(CliIntegration())
    ..registerPlugin(IgnoreExceptions());
  try {
    await bot.connect();
  } on Exception catch (e, st) {
    logger.severe('Could not connect', e, st);
    exit(1);
  }

  bot.onReady.first.then((_) {
    logger.info('Bot ready');
  });

  bot.eventsWs.onGuildCreate.listen(onGuildCreate);
  bot.eventsWs.onMessageReceived.listen(onMessageReceived);
}

void _configure() {
  Logger.root.onRecord.listen((record) {
    print('[${record.level}] (${record.loggerName}) ${record.message}');
    if (record.error != null) {
      print(record.error);
    }
    if (record.stackTrace != null) {
      print(record.stackTrace);
    }
  });
}

Future<void> onMessageReceived(IMessageReceivedEvent event) async {
  final logger = Logger('onMessageReceived');
  logger.info(event.message);

  final message = event.message;
  final guild = await message.guild?.getOrDownload();

  // Server outage
  if (guild == null) {
    logger.warning('Could not process message ${message.id}: guild == null');
    return;
  }

  // Automated or system message
  if (message.member == null || message.author.bot) {
    logger.warning('Could not process message ${message.id}: Invalid member');
    return;
  }

  // Channel types: https://discord.com/developers/docs/resources/channel#channel-object-channel-types
  final channel = bot.channels[message.channel.id];
  if (channel == null || channel.channelType != ChannelType.text) {
    logger.warning('Could not process message ${message.id}: Invalid channel');
    return;
  }

  // Check bot permissions
  final botMember = await guild.selfMember.getOrDownload();
  final botPermissions = await botMember.effectivePermissions;
  const requiredPermissions = {
    'viewChannel': PermissionsConstants.viewChannel,
    'sendMessages': PermissionsConstants.sendMessages,
    'sendMessagesInThread': PermissionsConstants.sendMessagesInThread,
    'createPublicThreads': PermissionsConstants.createPublicThreads,
    'readMessageHistory': PermissionsConstants.readMessageHistory,
  };
  for (final permission in requiredPermissions.entries) {
    final permissionName = permission.key;
    if (!PermissionsUtils.isApplied(botPermissions.raw, permission.value)) {
      throw Exception(
        'Bot does not have required permission: $permissionName',
      );
    }
  }

  final authorUser = message.author;
  final authorMember = message.member;
  final authorName = authorMember == null || authorMember.nickname == null
      ? authorUser.username
      : authorMember.nickname;

  final dateFormat = DateFormat('yyyy-MM-dd');
  final creationDate = dateFormat.format(message.createdAt);
  final threadName = '$authorName ($creationDate)';

  await message.createThread(
    ThreadBuilder(threadName)..private = false,
  );
}

Future<void> onGuildCreate(IGuildCreateEvent event) async {
  final logger = Logger('onGuildCreate');
  logger.info(event.guild);
  bot.guilds[event.guild.id] = event.guild;
  for (final channel in event.guild.channels) {
    bot.channels[channel.id] = channel;
  }
}
