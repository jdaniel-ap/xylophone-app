import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: XylophoneApp(),
  ));
}

class XylophoneApp extends StatelessWidget {
  void playN(int soundNum) async {
    AudioPlayer player = AudioPlayer();
    await player.play(AssetSource('note$soundNum.wav'));
  }
  String tabs = '3 4 55 4 3 2 11 2 33 22    3 4 55 4 3 2 11 2 3 2 11';
  Expanded BuildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () async {
          playN(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BuildKey(color: Colors.red, soundNumber: 1),
            BuildKey(color: Colors.orange, soundNumber: 2),
            BuildKey(color: Colors.yellow, soundNumber: 3),
            BuildKey(color: Colors.green, soundNumber: 4),
            BuildKey(color: Colors.lightBlue, soundNumber: 5),
            BuildKey(color: Colors.purple, soundNumber: 6),
            BuildKey(color: Colors.pink, soundNumber: 6),
          ],
        ),
      ),
    );
  }
}
