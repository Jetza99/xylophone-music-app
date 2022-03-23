import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNum){
    AudioCache audioCache = AudioCache();
    audioCache.play('note$soundNum.wav');
  }

  Expanded buildKey(int numSound, Color color ){

    Expanded key =  Expanded(
        child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
                EdgeInsets.zero
            ),
          ),
          onPressed: (){
            playSound(numSound);
          },
          child: Container(
            color: color,
          ),
        ),
      );

    return key;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body:  SafeArea(
          child: Column(

            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.blue),
              buildKey(7, Colors.purple),



            ],
          ),
        ),
      ),
    );
  }
}

