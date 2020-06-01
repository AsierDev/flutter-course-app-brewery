import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: addXylophoneKeys(),
          ),
        ),
      ),
    );
  }
}

class Note {
  var keyColor;
  String noteSound;

  Note(this.keyColor, this.noteSound);
}

List<Widget> addXylophoneKeys() {
  List<Note> notes = List<Note>();
  notes.add(Note(Colors.blueGrey, 'note1.wav'));
  notes.add(Note(Colors.indigo, 'note2.wav'));
  notes.add(Note(Colors.teal[700], 'note3.wav'));
  notes.add(Note(Colors.lightGreen, 'note4.wav'));
  notes.add(Note(Colors.amber, 'note5.wav'));
  notes.add(Note(Colors.orange, 'note6.wav'));
  notes.add(Note(Colors.red[600], 'note7.wav'));

  return notes
      .map(
        (element) => Expanded(
          child: FlatButton(
            color: element.keyColor,
            onPressed: () {
              final player = AudioCache();
              player.play(element.noteSound);
            },
          ),
        ),
      )
      .toList();
}
