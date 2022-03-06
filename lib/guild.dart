import 'package:logging/logging.dart';
import 'package:nyxx/nyxx.dart';

Future<void> onGuildCreate(INyxxWebsocket bot, IGuildCreateEvent event) async {
  final logger = Logger('onGuildCreate');
  final guild = event.guild;
  logger.info(guild);
  bot.guilds[guild.id] = guild;
  for (final channel in guild.channels) {
    bot.channels[channel.id] = channel;
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
}
