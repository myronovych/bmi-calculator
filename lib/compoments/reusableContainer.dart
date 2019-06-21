import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer({@required this.color, this.cardChild, this.tapOnIcon});

  final Color color;
  final Widget cardChild;
  final Function tapOnIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapOnIcon,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: this.color,
        ),
        margin: EdgeInsets.all(12.0),
      ),
    );
  }
}
