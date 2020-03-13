import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart'; // Importing AudioCache package to play audio from cache file

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //final player = AudioCache(); // Creating a new player that plays cache audio

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.mp3'); // setting player to play noteX.wav
  }

  Expanded buildKey({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
