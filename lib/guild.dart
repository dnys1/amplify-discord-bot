import 'package:autothreader_bot/message.dart';
import 'package:collection/collection.dart';
import 'package:logging/logging.dart';
import 'package:nyxx/nyxx.dart';
import 'package:nyxx_interactions/nyxx_interactions.dart';

Future<void> onGuildCreate(
  INyxxWebsocket bot,
  MessageReceiver messageReceiver,
  IGuildCreateEvent event,
) async {
  final logger = Logger('onGuildCreate');
  final guild = event.guild;
  logger.info(guild);
  bot.guilds[guild.id] = guild;
  for (final channel in guild.channels) {
    bot.channels[channel.id] = channel;
  }

  final adminRole = guild.roles.values.firstWhereOrNull(
    (role) => role.permissions.administrator,
  );
  if (adminRole == null) {
    logger.severe('No admin role found for guild $guild');
    return;
  }
  logger.info('Assigning bot to role: ${adminRole.name}');

  // Check bot permissions
  final botMember = await guild.selfMember.getOrDownload();
  final botPermissions = await botMember.effectivePermissions;
  const requiredPermissions = {
    'viewChannel': PermissionsConstants.viewChannel,
    'sendMessages': PermissionsConstants.sendMessages,
    'sendMessagesInThread': PermissionsConstants.sendMessagesInThread,
    'createPublicThreads': PermissionsConstants.createPublicThreads,
    'readMessageHistory': PermissionsConstants.readMessageHistory,
    'useSlashCommands': PermissionsConstants.useSlashCommands,
  };
  for (final permission in requiredPermissions.entries) {
    final permissionName = permission.key;
    if (!PermissionsUtils.isApplied(botPermissions.raw, permission.value)) {
      throw Exception(
        'Bot does not have required permission: $permissionName',
      );
    }
  }

  IInteractions.create(WebsocketInteractionBackend(bot))
    ..registerSlashCommand(
      SlashCommandBuilder(
        'Autothread',
        null,
        [],
        defaultPermissions: false,
        permissions: [
          CommandPermissionBuilderAbstract.role(adminRole.id),
        ],
        type: SlashCommandType.message,
      )..registerHandler(messageReceiver.onAutothread),
    )
    ..registerSlashCommand(
      SlashCommandBuilder(
        'Resolve',
        null,
        [],
        defaultPermissions: false,
        permissions: [
          CommandPermissionBuilderAbstract.role(adminRole.id),
        ],
        type: SlashCommandType.message,
      )..registerHandler(messageReceiver.resolveThread),
    )
    ..syncOnReady();

  Future.delayed(const Duration(seconds: 5)).then((_) {
    bot.setPresence(PresenceBuilder.of(
      status: UserStatus.online,
      activity: ActivityBuilder.listening(''),
    ));
  });
}
