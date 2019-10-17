import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int position, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(position);
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(position: 1, color: Colors.red),
              buildKey(position: 2, color: Colors.orange),
              buildKey(position: 3, color: Colors.yellow),
              buildKey(position: 4, color: Colors.green),
              buildKey(position: 5, color: Colors.teal),
              buildKey(position: 6, color: Colors.blue),
              buildKey(position: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
