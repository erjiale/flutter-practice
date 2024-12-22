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
  int selectedWeight = 70;

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
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kInactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("WEIGHT", style: kTextMessageStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text("$selectedWeight", style: kNumberStyle),
                            const Text("kg")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressed: () => {
                                setState(() =>
                                  selectedWeight--
                                )
                              },
                              icon: Icons.remove,
                            ),
                            const SizedBox(width: 10),
                            RoundIconButton(
                              onPressed: () => {
                                setState(() =>
                                  selectedWeight++
                                )
                              },
                              icon: Icons.add,
                            )
                          ],
                        )
                      ],
                    ),
                  )
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

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    required this.onPressed,
    this.icon,
    this.fillColor,
    this.iconColor
  });

  final Function() onPressed;
  final IconData? icon;
  final Color? fillColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      onPressed: onPressed,
      fillColor: fillColor ?? const Color(0xFF4C4F5E),
      child: Icon(icon, color: iconColor, size: 36),
    );
  }
}


