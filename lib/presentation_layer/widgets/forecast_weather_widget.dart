import 'package:flutter/material.dart';
import 'package:weather/core/utils/colors_app.dart';
import 'package:weather/core/utils/strings_app.dart';
import 'package:weather/data_layer/models/gridview_app.dart';
import 'package:weather/data_layer/models/weather_model.dart';
import 'package:weather/presentation_layer/widgets/container_widget.dart';
import 'package:weather/presentation_layer/widgets/divider_widget.dart';
import 'package:weather/presentation_layer/widgets/icon_widget.dart';
import 'package:weather/presentation_layer/widgets/text_data_widget.dart';

import '../../data_layer/models/day_model.dart' show DayModel;
import 'bold_text_widget.dart';

class ForecastWeatherUi extends StatelessWidget {
  final WeatherModel weatherModel;
  const ForecastWeatherUi({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    DayModel dayModel =
        weatherModel.forecastWeatherModel.foreCastDayModel.dayModel;
    return ContainerWidget(children: _buildContent(dayModel, weatherModel));
  }
}

List<Widget> _buildContent(DayModel dayModel, WeatherModel weather) => [
  BoldTextWidget(text: ConstantStrings.forecastDay),
  _buildLowAndHighTemp(dayModel),
  _buildIconAndText(
    text:
        ' ${ConstantStrings.avg}: ${dayModel.averageTemp}${ConstantStrings.tempSign}',
    icon: Icons.balance,
    color: ColorsApp.orangeAccent,
  ),
  DividerApp(),
  GridviewApp(startIndex: 0, weatherModel: weather),
  DividerApp(),
  GridviewApp(startIndex: 2, weatherModel: weather),
];

Widget _buildIconAndText({
  required String text,
  required IconData icon,
  required Color color,
}) => Row(
  children: [
    IconWidget(icon: icon, iconColor: color),
    TextDataWidget(text: text),
  ],
);

Widget _buildLowAndHighTemp(DayModel dayModel) => Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    _buildIconAndText(
      text:
          '${ConstantStrings.high}: ${dayModel.maxTemp}${ConstantStrings.tempSign}',
      icon: Icons.keyboard_arrow_up,
      color: ColorsApp.red,
    ),
    _buildIconAndText(
      text:
          '${ConstantStrings.low}: ${dayModel.minTemp}${ConstantStrings.tempSign}',
      icon: Icons.keyboard_arrow_down_sharp,
      color: ColorsApp.lightBlueAccent,
    ),
  ],
);
