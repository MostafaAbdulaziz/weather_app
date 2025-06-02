import 'package:equatable/equatable.dart';

import 'current_weather_model.dart';
import 'forecast_weather_model.dart';
import 'location_model.dart';

class WeatherModel extends Equatable {
  final LocationModel locationModel;
  final CurrentWeatherModel currentWeatherModel;
  final ForecastWeatherModel forecastWeatherModel;

  const WeatherModel({
    required this.locationModel,
    required this.currentWeatherModel,
    required this.forecastWeatherModel,
  });
  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
    locationModel: LocationModel.fromJson(json['location']),
    currentWeatherModel: CurrentWeatherModel.fromJson(json['current']),
    forecastWeatherModel: ForecastWeatherModel.fromJson(json['forecast']),
  );

  @override
  List<Object?> get props => [
    locationModel,
    currentWeatherModel,
    forecastWeatherModel,
  ];
}
