import 'dart:io';

import 'package:autothreader_bot/github.dart';
import 'package:autothreader_bot/guild.dart';
import 'package:autothreader_bot/message.dart';
import 'package:logging/logging.dart';
import 'package:nyxx/nyxx.dart';

Future<void> main() async {
  _configure();
  final logger = Logger('main');

  final botToken = Platform.environment['BOT_TOKEN'];
  if (botToken == null) {
    logger.severe('No bot token provided');
    exit(1);
  }

  final bot = NyxxFactory.createNyxxWebsocket(
    botToken,
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

  final githubClient = getEnvClient(logger);
  bot.eventsWs.onGuildCreate.listen((event) => onGuildCreate(bot, event));

  final messageReceiver = MessageReceiver(bot, githubClient);
  bot.eventsWs.onMessageReceived.listen(messageReceiver.onMessageReceived);
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
