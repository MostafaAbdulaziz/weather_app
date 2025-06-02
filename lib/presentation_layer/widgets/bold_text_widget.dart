import 'package:flutter/material.dart';
import 'package:weather/core/utils/colors_app.dart';
import 'package:weather/presentation_layer/widgets/public_text_widget.dart';

class BoldTextWidget extends PublicTextWidget {
  const BoldTextWidget({
    super.key,
    required super.text,
    super.fontSize = 35,
    super.fontWeight = FontWeight.bold,
    super.textColor = ColorsApp.clearWhiteColor,
  });
}
