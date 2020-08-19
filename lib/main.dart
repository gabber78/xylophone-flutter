import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        child: Icon(Icons.music_note),
        color: color,
        onPressed: () {
          playSound(soundNumber);
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
            alignment: Alignment.center,
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
             children: <Widget>[
               buildKey(color: Colors.red, soundNumber: 1),
               buildKey(color: Colors.green, soundNumber: 2),
               buildKey(color: Colors.teal, soundNumber: 3),
               buildKey(color: Colors.yellow, soundNumber: 4),
               buildKey(color: Colors.blue, soundNumber: 5),
               buildKey(color: Colors.purple, soundNumber: 6),
               buildKey(color: Colors.grey, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
