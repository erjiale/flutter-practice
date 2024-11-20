import 'package:flutter/material.dart';

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
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      body: const Column(
        children: [
          Expanded(
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
          Expanded(
            child: ReusableCard(color: Color(0xFF1D1E33)),
          ),
          Expanded(
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
