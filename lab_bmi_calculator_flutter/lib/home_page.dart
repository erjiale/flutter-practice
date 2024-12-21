import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const cardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFF6E0505);
const textColor = Color(0xFF9E9E98);

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
                  child: ReusableCard(
                    color: cardColor,
                    cardChild: ReusableCardChild(
                      iconData: FontAwesomeIcons.mars,
                      iconSize: 80.0,
                      textMessage: 'MALE',
                      textSize: 18.0,
                      textColor: textColor
                    )
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: cardColor,
                    cardChild: ReusableCardChild(
                      iconData: FontAwesomeIcons.venus,
                      iconSize: 80.0,
                      textMessage: 'FEMALE',
                      textSize: 18.0,
                      textColor: textColor
                    )
                  )
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(color: cardColor),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: cardColor)
                ),
                Expanded(
                  child: ReusableCard(color: cardColor)
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
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
    required this.color,
    this.cardChild
  });

  final Color color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)),
      child: cardChild
    );
  }
}

class ReusableCardChild extends StatelessWidget {
  const ReusableCardChild({
    super.key,
    required this.iconData,
    required this.iconSize,
    required this.textMessage,
    required this.textSize,
    required this.textColor
  });

  final IconData iconData;
  final double iconSize;
  final String textMessage;
  final double textSize;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: iconSize),
        const SizedBox(height: 15.0),
        Text(
          textMessage,
          style: TextStyle(
            fontSize: textSize,
            color: textColor
          )
        )
      ]
    );
  }
}