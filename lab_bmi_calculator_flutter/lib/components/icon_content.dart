import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    super.key,
    required this.iconData,
    required this.iconSize,
    required this.textMessage,
    required this.textStyle
  });

  final IconData iconData;
  final double iconSize;
  final String textMessage;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: iconSize),
        const SizedBox(height: 15.0),
        Text(
          textMessage,
          style: textStyle
        )
      ]
    );
  }
}