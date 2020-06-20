import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';



void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget{



  void playSound(int noteNumber){

    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded createKey({Color color, int soundNumber }){

   return Expanded(child: FlatButton(
      color: color,
      onPressed: (){

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              createKey(color: Colors.red, soundNumber: 1),
              createKey(color: Colors.blue, soundNumber: 2),
              createKey(color: Colors.purple, soundNumber: 3),
              createKey(color: Colors.green, soundNumber: 4),
              createKey(color: Colors.blueGrey, soundNumber: 5),
              createKey(color: Colors.orange, soundNumber: 6),
              createKey(color: Colors.teal, soundNumber: 7),

            ],



          ),
        ),
      ),
    );
  }

  }





