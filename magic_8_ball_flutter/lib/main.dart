import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black87,
            title: Text('Ask me anything', style: TextStyle(color: Colors.white70)),
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
                child: Image.asset(
                  'images/ball1.png',
                  fit: BoxFit.cover
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}