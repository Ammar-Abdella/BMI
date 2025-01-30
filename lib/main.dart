import 'package:flutter/material.dart';
import 'package:bmi_calculator/pages/input_page.dart';
import 'util/constants.dart';
import 'pages/calculated_bmi.dart';
void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Mytheme,
      initialRoute: '/',
      routes: {
        '/' :(context) => InputPage(),
        '/BMI': (context)=>CalculatedBmi(),
      },
    );
  }
}


