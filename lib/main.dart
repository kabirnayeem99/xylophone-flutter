import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final AudioCache player = AudioCache();
  Color colorName;
  int soundFileNumber;

  void playSound(int soundFileNumber) {
    player.play("note$soundFileNumber.wav");
  }

  Expanded buildKey(MaterialColor colorName, int soundFileNumber) {
    return Expanded(
      child: FlatButton(
        child: Text(""),
        color: colorName,
        onPressed: () {
          playSound(soundFileNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(Colors.red, 1),
                buildKey(Colors.yellow, 2),
                buildKey(Colors.orange, 3),
                buildKey(Colors.blue, 4),
                buildKey(Colors.green, 5),
                buildKey(Colors.deepOrange, 6),
                buildKey(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
