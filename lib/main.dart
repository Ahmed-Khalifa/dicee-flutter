import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[900],
        appBar: AppBar(
          title: Text('Roll The Dice'),
          backgroundColor: Colors.deepPurple[900],
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child:
            FlatButton(
              onPressed: () {
                _rollDice();
              },
              padding: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0, bottom: 16.0),
              child:
              Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ), //Left Button
          Expanded(
            child:
            FlatButton(
              padding: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0, bottom: 16.0),
              onPressed: () {
                _rollDice();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),//Right Button
        ],
      ),
    );
  }
  void _rollDice(){
    setState(() {
      this.rightDiceNumber = Random().nextInt(6) + 1;
      this.leftDiceNumber = Random().nextInt(6) + 1;
    });
  }
}