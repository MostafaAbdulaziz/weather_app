import 'package:flutter/material.dart';

class PublicTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final TextAlign textAlign;
  const PublicTextWidget({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.textColor,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) => Text(
    text,
    style: TextStyle(
      color: textColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
    textAlign: textAlign,
  );
}
