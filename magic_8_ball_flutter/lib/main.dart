import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black87,
            title: Text('Ask Me Anything', style: TextStyle(color: Colors.white70, fontSize: 30)),
            centerTitle: true,
          ),
          body: MainBodyPage(),
        ),
      ),
    );

class MainBodyPage extends StatefulWidget {
  const MainBodyPage({super.key});

  @override
  State<MainBodyPage> createState() => _MainBodyPageState();
}

class _MainBodyPageState extends State<MainBodyPage> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.black45,
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                child: TextButton(
                  onPressed: () => {
                    setState(() => 
                      ballNumber = Random().nextInt(5) + 1
                    )
                  },
                  child: Image.asset('images/ball$ballNumber.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
