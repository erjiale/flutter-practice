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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 6;

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                print("pressed left");
              },
              child: Image.asset('images/dice$leftDiceNumber.png')
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print("pressed right");
              },
              child: Image.asset('images/dice1.png')
            ),
          ),
        ]
      ),
    );
  }
}
