import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(PhoneApp());

class PhoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('assets/note$soundNumber.mp3');
  }

  Expanded buildKey(
    Color color,
    int soundNumber,
    String text,
  ) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(
              Colors.green,
              1,
              'YES',
            ),
            buildKey(Colors.red, 2, 'NO'),
            buildKey(Colors.white, 3, 'THANK YOU'),
            buildKey(Colors.yellow, 4, 'PLEASE'),
            buildKey(Colors.teal, 5, 'WHERE'),
            buildKey(Colors.orange, 6, 'SHOW'),
            buildKey(Colors.blue, 7, 'REPEAT'),
          ],
        )),
      ),
    );
  }
}
