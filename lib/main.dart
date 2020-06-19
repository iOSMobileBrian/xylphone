import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget{



  void playSound(int noteNumber){

    final player = AudioCache();
    player.play('note$noteNumber.wav');
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
              Expanded(child: FlatButton(
                  color: Colors.blue,
                  onPressed: (){

                    playSound(1);

                  },
              ),
              ),
              Expanded(child: FlatButton(
                color: Colors.purple,
                onPressed: (){

                  playSound(2);

                }, ),),
              Expanded(child: FlatButton(
                color: Colors.green,
                onPressed: (){

                  playSound(3);

                }, child:Text('press me'),),),
              Expanded(child: FlatButton(
                color: Colors.black,
                onPressed: (){

                  playSound(4);
                },
              ),
              ),
              Expanded(child: FlatButton(
                color: Colors.red,
                onPressed: (){
                  playSound(5);

                },),),
              Expanded(child: FlatButton(
                color: Colors.blueGrey,
                onPressed: (){
                  playSound(6);

                },),),
              Expanded(child: FlatButton(
                color: Colors.teal,
                onPressed: (){
                  playSound(7);

                },)
                ,),
            ],


          ),
        ),
      ),
    );
  }

  }





