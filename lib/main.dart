import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int numSound){
    final player = AudioCache();
    player.play('note$numSound.wav');
  }

  Expanded buildKey({Color color, int numSound}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed:() {
          playSound(numSound);
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
            children: [
              buildKey(color: Colors.red, numSound:1),
              buildKey(color: Colors.orange, numSound:2),
              buildKey(color: Colors.yellow, numSound:3),
              buildKey(color: Colors.green, numSound:4),
              buildKey(color: Colors.teal, numSound:5),
              buildKey(color: Colors.blue, numSound:6),
              buildKey(color: Colors.purple, numSound:7),
            ],
          ),
        ),
      ),
    );
  }
}
