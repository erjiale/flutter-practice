import 'package:flutter/material.dart';

const kPrimaryColor = Color.fromARGB(248, 53, 221, 221);
const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);
const kInactiveSliderColor = Color.fromARGB(255, 80, 80, 80);

const kBottomContainerHeight = 80.0;

const kTextMessageStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF9E9E98)
);

const kNumberStyle = TextStyle(
  fontSize: 60,
  fontWeight: FontWeight.w900
);

const kBottomContainerTextStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.w600
);

const kSliderThemeData = SliderThemeData(
  activeTrackColor: Colors.white,
  inactiveTrackColor: kInactiveSliderColor,
  thumbColor: kPrimaryColor,
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 30)
);


const kResultsPageTitleTextStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold
);

const kResultTextStyle = TextStyle(
  fontSize: 22,
  color: Color(0xFF24D876),
  fontWeight: FontWeight.bold
);

const kBmiTextStyle = TextStyle(
  fontSize: 100,
  fontWeight: FontWeight.bold
);

