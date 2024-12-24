import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.onTap,
    required this.buttonTitle
  });

  final Function() onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: kPrimaryColor,
          margin: const EdgeInsets.only(top: 10.0),
          padding: const EdgeInsets.only(bottom: 10.0),
          width: double.infinity,
          height: kBottomContainerHeight,
          child: Center(
              child: Text(buttonTitle,
                  style: kBottomContainerTextStyle))),
    );
  }
}