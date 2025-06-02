import 'package:flutter/material.dart';
import 'package:weather/core/utils/colors_app.dart';
import 'package:weather/presentation_layer/widgets/public_text_widget.dart';

class TextDataWidget extends PublicTextWidget {
  const TextDataWidget({
    super.key,
    required super.text,
    super.fontSize = 25,
    super.fontWeight = FontWeight.normal,
    super.textColor = ColorsApp.clearWhiteColor,
  });
}
