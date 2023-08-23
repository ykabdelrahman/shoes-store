import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const CustomTextWidget({
    super.key,
    required this.text,
    this.fontSize = 26,
    this.fontWeight = FontWeight.w300,
    this.color = Colors.black,
    // this.letterSpacing = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
