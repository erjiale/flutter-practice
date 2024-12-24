import 'package:flutter/material.dart';
import 'bottom_button.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {super.key,
      required this.bmiResult,
      required this.textResult,
      required this.interpretation});

  final String bmiResult;
  final String textResult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: const Text(
                    'Your Result',
                    style: kResultsPageTitleTextStyle,
                    textAlign: TextAlign.left,
                  )),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(textResult, style: kResultTextStyle),
                      Text(bmiResult.toUpperCase(), style: kBmiTextStyle),
                      Text(interpretation, textAlign: TextAlign.center),
                    ]),
              ),
            ),
            BottomButton(
              buttonTitle: "RE-CALCULATE",
              onTap: () => {Navigator.pop(context)},
            ),
          ],
        ));
  }
}
