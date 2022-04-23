import 'dart:async';
import 'dart:io';

import 'package:autothreader_bot/common.dart';
import 'package:autothreader_bot/db/db.dart';
import 'package:autothreader_bot/github.dart';
import 'package:autothreader_bot/guild.dart';
import 'package:autothreader_bot/message.dart';
import 'package:logging/logging.dart';
import 'package:nyxx/nyxx.dart';
import 'package:nyxx_interactions/nyxx_interactions.dart';

Future<void> main() async {
  _configure();
  final logger = Logger('main');
  await runZonedGuarded(() async {
    const env = 'DISCORD_BOT_TOKEN';
    final botToken = Platform.environment[env];
    if (botToken == null) {
      logger.severe('No $env variable');
      exit(1);
    }

    final GithubClient githubClient;
    try {
      githubClient = getEnvClient(logger);
      await githubClient.init();
    } on Exception catch (e) {
      logger.severe('Could not create GitHub client', e);
      exit(1);
    }

    final bot = NyxxFactory.createNyxxWebsocket(
      botToken,
      GatewayIntents.guilds |
          GatewayIntents.guildMessages |
          GatewayIntents.guildIntegrations |
          GatewayIntents.guildPresences,
    )..registerPlugin(CliIntegration());

    try {
      await bot.connect();
    } on Exception catch (e, st) {
      logger.severe('Could not connect', e, st);
      exit(1);
    }

    bot.onReady.first.then((_) {
      logger.fine('Bot ready');
    });

    final db = BotDb();
    final messageReceiver = MessageReceiver(bot, githubClient, db);
    bot.eventsWs.onGuildCreate.listen(
      (event) => onGuildCreate(bot, messageReceiver, event),
    );
    bot.eventsWs.onMessageReceived.listen(messageReceiver.onMessageReceived);

    IInteractions.create(WebsocketInteractionBackend(bot))
      ..registerSlashCommand(
        SlashCommandBuilder(
          'Autothread',
          null,
          [],
          type: SlashCommandType.message,
        )..registerHandler(messageReceiver.onAutothread),
      )
      ..registerSlashCommand(
        SlashCommandBuilder(
          'Mark-As-Answer',
          null,
          [],
          type: SlashCommandType.message,
        )..registerHandler(messageReceiver.resolveThread),
      )
      ..syncOnReady();

    await _startHttpServer();
  }, (e, st) {
    logger.severe('Zone unhandled exception', e, st);
  });
}

void _configure() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    final log = '${record.time} [${record.level}] (${record.loggerName}): '
        '${record.message}';
    print(log);
    if (record.error != null) {
      print(record.error);
    }
    if (record.stackTrace != null) {
      print(record.stackTrace);
    }
  });
}

/// Spin up an HTTP server which listens for health check requests from ECS.
Future<void> _startHttpServer() async {
  if (isDebugMode) return;
  final server = await HttpServer.bind(
    InternetAddress.anyIPv4,
    80,
  );
  final serverLogger = Logger('HTTP Server');
  serverLogger.info('Serving on port ${server.port}');
  server.listen((request) async {
    serverLogger.info('${request.method} ${request.uri}');
    request.response.write('OK');
    await request.response.flush();
    await request.response.close();
  });
}
