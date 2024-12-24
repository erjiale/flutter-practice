import 'package:flutter/material.dart';
import 'bottom_button.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

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
            const Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('OVERWEIGHT', style: kResultTextStyle),
                      Text('20.0', style: kBmiTextStyle),
                      Text(
                        'BMI Score Description BMI Score Description BMI Score Description BMI Score Description',
                        textAlign: TextAlign.center,
                      )
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
