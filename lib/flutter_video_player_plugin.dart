
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class FlutterVideoPlayerPlugin extends StatefulWidget {
  const FlutterVideoPlayerPlugin({super.key});

  @override
  State<StatefulWidget> createState() => _FlutterVideoPlayerPlugin();
}

class _FlutterVideoPlayerPlugin extends State<FlutterVideoPlayerPlugin>{
  final String viewType = 'text_view_as_plugin';
  final Map<String, dynamic> creationParams = <String, dynamic>{};

  @override
  Widget build(BuildContext context) {
    return PlatformViewLink(surfaceFactory: (context, controller) {
      return AndroidViewSurface(
          controller: controller as AndroidViewController,
          hitTestBehavior: PlatformViewHitTestBehavior.opaque,
          gestureRecognizers:  const <Factory<OneSequenceGestureRecognizer>>{});
    }, onCreatePlatformView: (params) {
      return PlatformViewsService.initSurfaceAndroidView(
          id: params.id,
          viewType: viewType,
          layoutDirection: TextDirection.rtl,
          creationParams: creationParams,
          creationParamsCodec: const StandardMessageCodec()
      )..addOnPlatformViewCreatedListener(params.onPlatformViewCreated)..create();
    }, viewType: viewType);
  }
}