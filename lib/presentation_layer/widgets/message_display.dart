import 'package:flutter/material.dart';
import 'package:weather/presentation_layer/widgets/hint_text_widget.dart';

class MessageDisplay extends StatelessWidget {
  final String text;
  const MessageDisplay({super.key, required this.text});

  @override
  Widget build(BuildContext context) => Align(
    heightFactor: 5,
    child: HintTextWidget(text: text, textAlign: TextAlign.center),
  );
}
