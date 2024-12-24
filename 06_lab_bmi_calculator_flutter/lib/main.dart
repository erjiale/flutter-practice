import 'package:flutter/material.dart';
import 'package:lab_bmi_calculator_flutter/home_page.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: const Color.fromARGB(255, 82, 206, 255),
      ),
      themeMode: ThemeMode.dark,
      home: const HomePage(title: 'BMI CALCULATOR'),
    );
  }
}