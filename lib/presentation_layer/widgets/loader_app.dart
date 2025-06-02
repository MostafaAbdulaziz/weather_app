import 'package:flutter/material.dart';
import 'package:weather/core/utils/colors_app.dart';

class LoaderApp extends StatelessWidget {
  const LoaderApp({super.key});

  @override
  Widget build(BuildContext context) => Align(
    heightFactor: 18,
    child: CircularProgressIndicator(color: ColorsApp.clearWhiteColor),
  );
}
