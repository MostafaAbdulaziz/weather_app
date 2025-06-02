import 'package:equatable/equatable.dart';

import 'condition_model.dart';

class CurrentWeatherModel extends Equatable {
  final double currentTemp;
  final ConditionModel conditionModel;
  final double feelsLike;
  final int humidity;
  final double wind;

  const CurrentWeatherModel({
    required this.currentTemp,
    required this.conditionModel,
    required this.feelsLike,
    required this.humidity,
    required this.wind,
  });

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) =>
      CurrentWeatherModel(
        currentTemp: json['temp_c'],
        conditionModel: ConditionModel.fromJson(json['condition']),
        feelsLike: json['feelslike_c'],
        humidity: json['humidity'],
        wind: json['wind_kph'],
      );

  @override
  List<Object?> get props => [
    currentTemp,
    conditionModel,
    feelsLike,
    humidity,
    wind,
  ];
}
