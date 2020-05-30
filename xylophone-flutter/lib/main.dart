import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
              color: Colors.deepPurple,
              padding: EdgeInsets.all(12.0),
              onPressed: () {
                final player = AudioCache();
                player.play('note1.wav');
              },
              child: Text('Click me'),
            ),
          ),
        ),
      ),
    );
  }
}
