import 'package:flutter/material.dart';
import 'package:weather/presentation_layer/widgets/hint_text_widget.dart';
import 'package:weather/presentation_layer/widgets/text_data_widget.dart';

import 'icon_widget.dart';

class ListTileApp extends StatelessWidget {
  final String text;
  final String subText;
  final IconData icon;
  final Color iconColor;
  const ListTileApp({
    super.key,
    required this.text,
    required this.subText,
    required this.iconColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) => ListTile(
    leading: IconWidget(icon: icon, iconColor: iconColor),
    title: TextDataWidget(text: text, fontSize: 22),
    subtitle: HintTextWidget(text: subText, fontSize: 18),
  );
}
