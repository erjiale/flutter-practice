import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFF6E0505);
const textColor = Color(0xFF9E9E98);

enum Gender { male, female }

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(Gender selectedGender) {
    switch (selectedGender) {
      case Gender.male:
        maleCardColor = maleCardColor == inactiveCardColor
          ? activeCardColor
          : inactiveCardColor;
        femaleCardColor = maleCardColor == activeCardColor
          ? inactiveCardColor
          : femaleCardColor;
        break;
      case Gender.female:
        femaleCardColor = femaleCardColor == inactiveCardColor
          ? activeCardColor
          : inactiveCardColor;
        maleCardColor = femaleCardColor == activeCardColor
          ? inactiveCardColor
          : maleCardColor;
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => {
                      setState(() => 
                        updateColor(Gender.male)
                      ),
                    },
                    child: ReusableCard(
                      color: maleCardColor,
                      cardChild: const IconContent(
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
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => {
                      setState(() => 
                        updateColor(Gender.female)
                      ),
                    },
                    child: ReusableCard(
                      color: femaleCardColor,
                      cardChild: const IconContent(
                        iconData: FontAwesomeIcons.venus,
                        iconSize: 80.0,
                        textMessage: 'FEMALE',
                        textStyle: TextStyle(
                          fontSize: 18.0,
                          color: textColor
                        )
                      )
                    ),
                  )
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(color: inactiveCardColor),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: inactiveCardColor)
                ),
                Expanded(
                  child: ReusableCard(color: inactiveCardColor)
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



