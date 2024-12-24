import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key, 
    required this.color,
    this.cardChild,
    this.onTapAction
  });

  final Color color;
  final Widget? cardChild;
  final Function()? onTapAction;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapAction,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)),
        child: cardChild,
      ),
    );
  }
}