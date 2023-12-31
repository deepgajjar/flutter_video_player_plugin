import 'package:flutter/material.dart';

import 'package:flutter_video_player_plugin/flutter_video_player_plugin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: const Center(
          child: FractionallySizedBox(
            heightFactor: 0.06,
            child:FlutterVideoPlayerPlugin() ,
          ),
          // child: FlutterVideoPlayerPlugin(),
        ),
      ),
    );
  }
}
