import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_video_player_plugin_platform_interface.dart';

/// An implementation of [FlutterVideoPlayerPluginPlatform] that uses method channels.
class MethodChannelFlutterVideoPlayerPlugin extends FlutterVideoPlayerPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_video_player_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
