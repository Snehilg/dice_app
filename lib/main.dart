import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: const Text("Dice"),
          backgroundColor: Colors.blue,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1, rightDiceNum = 1;

  //to change the value of dice variables
  void diceNum() {
    leftDiceNum = Random().nextInt(6) + 1;
    rightDiceNum = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          //top/left button
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  diceNum();
                });
              },
              child: Image.asset("images/dice$leftDiceNum.png"),
            ),
          ),
          Expanded(
            //down-right button
            child: TextButton(
              onPressed: () {
                setState(() {
                  diceNum();
                });
              },
              child: Image.asset("images/dice$rightDiceNum.png"),
            ),
          ),
        ],
      ),
    );
  }
}
