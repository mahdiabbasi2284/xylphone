import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylphone());


class Xylphone extends StatelessWidget {

  void _soundPlay({required int soundnumber}) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnumber.wav'));
  }
  Expanded buildKey({ required Color color,required int sound}){
    return Expanded(
      child: Container(
        color: color,
        child: InkWell(
          onTap: () {
            _soundPlay(soundnumber: sound);
          },
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildKey(color: Colors.red,sound: 1),
              buildKey(color: Colors.orange,sound: 2),
              buildKey(color: Colors.yellow,sound: 3),
              buildKey(color: Colors.green,sound: 4),
              buildKey(color: Colors.teal,sound: 5),
              buildKey(color: Colors.blue,sound: 6),
              buildKey(color: Colors.purple,sound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
