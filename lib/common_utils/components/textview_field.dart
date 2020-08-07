import 'package:flutter/material.dart';

class TextViewField extends StatelessWidget {
  final String text;
  final double textSize;
  final Color textColor;
  final String textFont;

  TextViewField({this.text, this.textSize, this.textColor, this.textFont});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      text,
      style:
          TextStyle(color: textColor, fontSize: textSize, fontFamily: textFont),
    ));
  }
}
