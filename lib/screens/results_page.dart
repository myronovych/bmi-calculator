import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/compoments/reusableContainer.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/compoments/lowerBar.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULT'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Your Result',
                  style: kBigLabelTextStyle.copyWith(
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Normal',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.green,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    bmi.toString(),
                    style: kBigLabelTextStyle.copyWith(fontSize: 100),
                  ),
                  Text(
                    'Good BMI! Great job but don\'t forget to stay fit.',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: kGenderActiveColor,
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          Expanded(
            flex: 1,
            child: LowerBar(
                title: 'RE-CALCULATE',
                onTap: () {
                  Navigator.pop(context);
                }),
          ),
        ],
      ),
    );
  }
}
