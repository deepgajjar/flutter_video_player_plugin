import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_video_player_plugin/flutter_video_player_plugin.dart';
import 'package:flutter_video_player_plugin/flutter_video_player_plugin_platform_interface.dart';
import 'package:flutter_video_player_plugin/flutter_video_player_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterVideoPlayerPluginPlatform
    with MockPlatformInterfaceMixin
    implements FlutterVideoPlayerPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterVideoPlayerPluginPlatform initialPlatform = FlutterVideoPlayerPluginPlatform.instance;

  test('$MethodChannelFlutterVideoPlayerPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterVideoPlayerPlugin>());
  });

  test('getPlatformVersion', () async {
    FlutterVideoPlayerPlugin flutterVideoPlayerPlugin = FlutterVideoPlayerPlugin();
    MockFlutterVideoPlayerPluginPlatform fakePlatform = MockFlutterVideoPlayerPluginPlatform();
    FlutterVideoPlayerPluginPlatform.instance = fakePlatform;

    // expect(await flutterVideoPlayerPlugin.getPlatformVersion(), '42');
  });
}
