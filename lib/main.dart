import 'package:flutter/material.dart';
import 'dart:math';

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
  int leftDiceNo = 2;
  int rightDiceNo = 1;

  void newNumbers() {
    setState(() {
      leftDiceNo = newNumber();
      rightDiceNo = newNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNo.png'),
              onPressed: () {
                newNumbers();
              },
            ),
          ),
          Divider(),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNo.png'),
              onPressed: () {
                newNumbers();
              },
            ),
          ),
        ],
      ),
    );
  }
}

int newNumber() {
  return Random().nextInt(6) + 1;
}
