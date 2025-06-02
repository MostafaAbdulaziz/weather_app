import 'package:flutter/material.dart';
import 'package:weather/core/utils/colors_app.dart';

class DividerApp extends StatelessWidget {
  const DividerApp({super.key});

  @override
  Widget build(BuildContext context) => Divider(
    color: ColorsApp.darkWhite,
    height: 30,
    thickness: 0.7,
    endIndent: 20,
    indent: 20,
  );
}
