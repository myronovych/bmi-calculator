import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class LowerBar extends StatelessWidget {
  LowerBar({this.title, this.onTap});

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kPinkColor,
        width: double.infinity,
        height: kLowerBarHeight,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Text(
            title,
            style: kBigLabelTextStyle.copyWith(
                fontSize: 30, fontWeight: FontWeight.w600),
          ),
        )),
      ),
    );
  }
}
