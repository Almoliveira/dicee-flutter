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

// We are using FlatButtons here, even if they are deprecated.

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeNumbers() {
    rightDiceNumber = Random().nextInt(6) + 1;
    leftDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  //Use this one for incremental Changes!
                  // leftDiceNumber =
                  //     (leftDiceNumber == 6) ? 1 : leftDiceNumber + 1;
                  leftDiceNumber = Random().nextInt(6) + 1;

                  //Challenge 2.
                  // rightDiceNumber = Random().nextInt(6) + 1;
                  // leftDiceNumber = Random().nextInt(6) + 1;

                  //Challenge 3.
                  //changeNumbers();
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  //Use this one for incremental Changes!
                  // rightDiceNumber =
                  //     (rightDiceNumber == 6) ? 1 : rightDiceNumber + 1;
                  rightDiceNumber = Random().nextInt(6) + 1;

                  //Challenge 2.
                  // rightDiceNumber = Random().nextInt(6) + 1;
                  // leftDiceNumber = Random().nextInt(6) + 1;

                  //Challenge 3.
                  //changeNumbers();
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
