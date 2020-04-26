import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              print('pritisno si prvu kockicu');
            },
            child: Image.asset('images/dice2.png'),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              print('i ovu si prtisko');
            },
            child: Image.asset('images/dice1.png'),
          ),
        ),
      ],
    );
  }
}
