import 'package:flutter/material.dart';
import 'package:weather/core/utils/colors_app.dart';
import 'package:weather/core/utils/strings_app.dart' show ConstantStrings;
import 'package:weather/data_layer/models/data_model.dart';
import 'package:weather/data_layer/models/weather_model.dart';

TextEditingController searchController = TextEditingController();

List<DataModel> createDataGroup(WeatherModel weatherModel) => [
  DataModel(
    icon: Icons.water_drop_rounded,
    iconColor: ColorsApp.lightBlueAccent,
    text: ConstantStrings.humidity,
    subText: '${weatherModel.currentWeatherModel.humidity.toString()}%',
  ),
  DataModel(
    icon: Icons.wind_power,
    iconColor: ColorsApp.lightBlueAccent,
    text: ConstantStrings.wind,
    subText: '${weatherModel.currentWeatherModel.wind.toString()} km/h',
  ),
  DataModel(
    icon: Icons.sunny_snowing,
    iconColor: ColorsApp.yellow,
    text: ConstantStrings.sunrise,
    subText:
        weatherModel.forecastWeatherModel.foreCastDayModel.sunModel.sunrise,
  ),
  DataModel(
    icon: Icons.sunny_snowing,
    iconColor: ColorsApp.yellow,
    text: ConstantStrings.sunset,
    subText: weatherModel.forecastWeatherModel.foreCastDayModel.sunModel.sunset,
  ),
];
