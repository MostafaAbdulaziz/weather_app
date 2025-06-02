import 'package:flutter/material.dart';
import 'package:weather/core/utils/assets_images_path.dart';
import 'package:weather/core/utils/strings_app.dart';
import 'package:weather/data_layer/models/current_weather_model.dart';
import 'package:weather/data_layer/models/weather_model.dart';
import 'package:weather/presentation_layer/widgets/hint_text_widget.dart';
import 'package:weather/presentation_layer/widgets/rich_text_widget.dart';

import '../../data_layer/models/location_model.dart';
import 'bold_text_widget.dart';
import 'container_widget.dart';

class CurrentWeatherUi extends StatelessWidget {
  final WeatherModel weatherModel;
  const CurrentWeatherUi({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    LocationModel location = weatherModel.locationModel;
    CurrentWeatherModel currentWeather = weatherModel.currentWeatherModel;
    return ContainerWidget(
      children: [
        BoldTextWidget(text: '${location.cityName}, ${location.countryName}'),
        HintTextWidget(
          text:
              '${ConstantStrings.now}: ${location.localTime.substring(11)} ${_checkTime()}',
        ),
        _createTempAndImage(currentWeather),
        HintTextWidget(
          text:
              '${ConstantStrings.feelsLike}: ${currentWeather.feelsLike}${ConstantStrings.tempSign}',
        ),
      ],
    );
  }
}

Widget _createTempAndImage(CurrentWeatherModel currentWeather) => Row(
  children: [
    RichTextWidget(currentTemp: currentWeather.currentTemp.toString()),
    Expanded(
      child: FadeInImage.assetNetwork(
        placeholder: _checkLoadingImage(),
        image: "https:${currentWeather.conditionModel.iconImage}",
        fit: BoxFit.cover,
      ),
    ),
  ],
);

String _checkLoadingImage() =>
    DateTime.now().hour >= 5 && DateTime.now().hour <= 19
        ? ImagesPath.sunPath
        : ImagesPath.moonPath;

String _checkTime() => DateTime.now().hour < 12 ? 'AM' : 'PM';
