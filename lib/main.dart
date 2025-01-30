import 'package:flutter/material.dart';
import 'package:bmi_calculator/pages/input_page.dart';
void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF0A0E21),
     scaffoldBackgroundColor: const Color(0xFF0A0E21),
     textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.white)),
      ),
      home: InputPage(),
    );
  }
}


