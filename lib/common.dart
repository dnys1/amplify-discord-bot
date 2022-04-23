/// Whether running in release mode.
const isReleaseMode = bool.fromEnvironment('dart.vm.product');
const isDebugMode = !isReleaseMode;
