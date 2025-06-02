import 'package:flutter/material.dart';
import 'package:weather/core/utils/colors_app.dart';

import '../../core/utils/strings_app.dart';

class RichTextWidget extends StatelessWidget {
  final String currentTemp;
  const RichTextWidget({super.key, required this.currentTemp});

  @override
  Widget build(BuildContext context) => RichText(
    text: TextSpan(
      children: [
        _createTextSpan(currentTemp, 65),
        _createTextSpan(ConstantStrings.tempSign, 50),
      ],
    ),
  );
}

TextSpan _createTextSpan(String text, double fontSize) => TextSpan(
  text: text,
  style: TextStyle(
    fontSize: fontSize,
    color: ColorsApp.clearWhiteColor,
    fontWeight: FontWeight.bold,
  ),
);
