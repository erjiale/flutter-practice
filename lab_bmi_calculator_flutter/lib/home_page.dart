import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: Color(0xFF1D1E33))
                ),
                Expanded(
                  child: ReusableCard(color: Color(0xFF1D1E33))
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(color: Color(0xFF1D1E33)),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: Color(0xFF1D1E33))
                ),
                Expanded(
                  child: ReusableCard(color: Color(0xFF1D1E33))
                ),
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 110, 5, 5),
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key, 
    required this.color
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
