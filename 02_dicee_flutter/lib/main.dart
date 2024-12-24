import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Dicee', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 2, rightDiceNumber = 1;

  void randomizeDiceNumbers() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                randomizeDiceNumbers();
              },
              child: Image.asset('images/dice$leftDiceNumber.png')
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                randomizeDiceNumbers();
              },
              child: Image.asset('images/dice$rightDiceNumber.png')
            ),
          ),
        ]
      ),
    );
  } 
}
