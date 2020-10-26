import 'package:flutter/material.dart';
// import 'package:list_english_words/list_english_words.dart';
import 'package:audioplayers/audio_cache.dart';
// import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int number){

    final player= AudioCache();
              player.play('note$number.wav');
  }

  Expanded createButton(Color color,int number){
    return Expanded(child: FlatButton(
      color: color,
      onPressed: () {

playsound(number);
        }, child: null,
  ),


    );
  }
  @override
  Widget build(BuildContext context) {

    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget>[
              
            
            createButton(Colors.blue, 1),
            createButton(Colors.red, 2),
            createButton(Colors.green, 3),
            createButton(Colors.amber, 4),
            createButton(Colors.cyan, 5),
            createButton(Colors.orange, 6),
            createButton(Colors.pink, 7),

            ]
          )
          
    
          ),
        ),
      
    );
  }
}
