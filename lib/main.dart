import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'bmi_logic.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090c21),
        scaffoldBackgroundColor: Color(0xFF090c21),
        appBarTheme: AppBarTheme(elevation: 40.0),
      ),
      home: InputPage(),
    );
  }
}
