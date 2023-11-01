import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final FontWeight fontWeight;
  final Color color;
  final double fontSize;
  final String text;

  const CustomText(
      {super.key,
      required this.fontWeight,
      required this.color,
      required this.fontSize,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
