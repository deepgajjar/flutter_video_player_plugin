import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_video_player_plugin_method_channel.dart';

abstract class FlutterVideoPlayerPluginPlatform extends PlatformInterface {
  /// Constructs a FlutterVideoPlayerPluginPlatform.
  FlutterVideoPlayerPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterVideoPlayerPluginPlatform _instance = MethodChannelFlutterVideoPlayerPlugin();

  /// The default instance of [FlutterVideoPlayerPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterVideoPlayerPlugin].
  static FlutterVideoPlayerPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterVideoPlayerPluginPlatform] when
  /// they register themselves.
  static set instance(FlutterVideoPlayerPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
