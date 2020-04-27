import 'dart:math';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LKocka = 1;
  int DKocka = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 100.0),
          Text(
            'Dino i Kan?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,
              fontSize: 50.0,
            ),
          ),
          SizedBox(
            height: 250.0,
            width: 100.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      LKocka = Random().nextInt(6) + 1;
                      final player = AudioCache();
                      player.play('K2$LKocka.m4a');
                    });
                  },
                  child: Image.asset('images/dice$LKocka.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      DKocka = Random().nextInt(6) + 1;
                      final player = AudioCache();
                      player.play('K1$DKocka.m4a');
                    });
                  },
                  child: Image.asset('images/dice$DKocka.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
