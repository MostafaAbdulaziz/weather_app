import 'package:equatable/equatable.dart';

import 'forecast_day_model.dart';

class ForecastWeatherModel extends Equatable {
  final ForeCastDayModel foreCastDayModel;

  const ForecastWeatherModel({required this.foreCastDayModel});

  factory ForecastWeatherModel.fromJson(Map<String, dynamic> json) =>
      ForecastWeatherModel(
        foreCastDayModel: ForeCastDayModel.fromJson(json['forecastday'][0]),
      );
  @override
  List<Object?> get props => [foreCastDayModel];
}
