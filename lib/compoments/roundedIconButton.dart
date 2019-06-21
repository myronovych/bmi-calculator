import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({@required this.icon, this.color, this.onPressed});

  final IconData icon;
  final Color color;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 8,
      child: Icon(icon),
      constraints: BoxConstraints(minWidth: 56, minHeight: 56),
      shape: CircleBorder(),
      fillColor: color == null ? Colors.pinkAccent : color,
    );
  }
}
