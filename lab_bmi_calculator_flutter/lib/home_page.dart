import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

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
                    cardChild: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      iconSize: 80.0,
                      textMessage: 'MALE',
                      textStyle: TextStyle(
                        fontSize: 18.0,
                        color: textColor
                      )
                    )
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: cardColor,
                    cardChild: IconContent(
                      iconData: FontAwesomeIcons.venus,
                      iconSize: 80.0,
                      textMessage: 'FEMALE',
                      textStyle: TextStyle(
                        fontSize: 18.0,
                        color: textColor
                      )
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



