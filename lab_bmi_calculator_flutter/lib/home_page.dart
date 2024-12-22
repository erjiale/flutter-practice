import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

enum Gender { male, female }

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Gender? selectedGender;
  int selectedHeight = 178;
  
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
                  child: ReusableCard(
                    onTapAction: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male ? kActiveCardColor : kInactiveCardColor,
                    cardChild: const IconContent(
                      iconData: FontAwesomeIcons.mars,
                      iconSize: 80.0,
                      textMessage: 'MALE',
                      textStyle: kTextMessageStyle
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTapAction: () => {
                      setState(() {
                        selectedGender = Gender.female;
                      })
                    },
                    color: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                    cardChild: const IconContent(
                      iconData: FontAwesomeIcons.venus,
                      iconSize: 80.0,
                      textMessage: 'FEMALE',
                      textStyle: kTextMessageStyle,
                    ),
                  )
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("HEIGHT", style: kTextMessageStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('$selectedHeight', style: kNumberStyle),
                      const Text("cm")
                    ]
                  ),
                  SliderTheme(
                    data: kSliderThemeData,
                    child: Slider(
                      value: selectedHeight.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newValue) => {
                        setState(() => 
                          selectedHeight = newValue.toInt()
                        )
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: kInactiveCardColor)
                ),
                Expanded(
                  child: ReusableCard(color: kInactiveCardColor)
                ),
              ],
            ),
          ),
          Container(
            color: kPrimaryColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight
          ),
        ],
      ),
    );
  }
}



