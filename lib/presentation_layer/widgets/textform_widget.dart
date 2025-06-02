import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/utils/colors_app.dart';
import 'package:weather/core/utils/strings_app.dart';
import 'package:weather/presentation_layer/controller/cubit_app.dart';

import '../../core/utils/global_variable.dart';

class TextformApp extends StatelessWidget {
  const TextformApp({super.key});

  @override
  Widget build(BuildContext context) => Theme(
    data: _updateSelectionTheme(context),
    child: _buildTextformSearch(context),
  );
}

ThemeData _updateSelectionTheme(BuildContext context) =>
    Theme.of(context).copyWith(
      textSelectionTheme: const TextSelectionThemeData(
        selectionColor: ColorsApp.darkWhite,
        selectionHandleColor: ColorsApp.clearWhiteColor,
      ),
    );

Widget _buildTextformSearch(BuildContext context) => TextField(
  style: _createTextStyle(color: ColorsApp.whiteColor),
  decoration: _buildDecoration(),
  cursorColor: ColorsApp.darkWhite,
  cursorRadius: Radius.circular(50),
  controller: searchController,
  onSubmitted:
      (current) async => await context.read<WeatherCubit>().getWeather(),
);

InputDecoration _buildDecoration() => InputDecoration(
  hintText: ConstantStrings.hintTextForm,
  enabledBorder: _createBorder(),
  focusedBorder: _createBorder(),
  hintStyle: _createTextStyle(),
  prefixIcon: Icon(Icons.search, color: ColorsApp.darkWhite),
);

TextStyle _createTextStyle({Color color = ColorsApp.darkWhite}) =>
    TextStyle(color: color, fontSize: 21);

OutlineInputBorder _createBorder() => OutlineInputBorder(
  borderRadius: BorderRadius.circular(30),
  borderSide: BorderSide(color: ColorsApp.borderColor, width: 2),
);
