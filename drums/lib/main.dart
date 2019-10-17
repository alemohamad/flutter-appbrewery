import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(DrumsApp());

class DrumsApp extends StatelessWidget {
  void playDrum(String nameFile) {
    final player = AudioCache();
    player.play('drum_$nameFile.mp3');
  }

  Expanded drum({String type, String file, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playDrum(file);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 0.0),
          child: Text(
            type,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  drum(
                    type: 'Bass Drum',
                    file: 'bass',
                    color: Colors.red,
                  ),
                  drum(
                    type: 'Indian Drum',
                    file: 'indian',
                    color: Colors.green,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  drum(
                    type: 'Kick Drum',
                    file: 'kick',
                    color: Colors.blue,
                  ),
                  drum(
                    type: 'Snare Drum',
                    file: 'snare',
                    color: Colors.purple,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
