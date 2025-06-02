import 'package:flutter/material.dart';
import 'package:weather/presentation_layer/widgets/public_text_widget.dart';

import '../../core/utils/colors_app.dart';

class HintTextWidget extends PublicTextWidget {
  const HintTextWidget({
    super.key,
    required super.text,
    super.fontSize = 25,
    super.fontWeight = FontWeight.normal,
    super.textColor = ColorsApp.whiteColor,
    super.textAlign,
  });
}
