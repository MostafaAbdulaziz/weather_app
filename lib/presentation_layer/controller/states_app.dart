import 'package:equatable/equatable.dart';
import 'package:weather/data_layer/models/weather_model.dart';

import '../../core/enums/request_states.dart';

abstract class WeatherState extends Equatable {
  final RequestState requestState;
  final WeatherModel? weatherModel;

  const WeatherState({required this.requestState, this.weatherModel});
}

class InitialWeatherState extends WeatherState {
  const InitialWeatherState({super.requestState = RequestState.wait});
  @override
  List<Object?> get props => [requestState];
}

class LoadingWeatherState extends WeatherState {
  const LoadingWeatherState({super.requestState = RequestState.loading});

  @override
  List<Object?> get props => [requestState];
}

class LoadedWeatherState extends WeatherState {
  const LoadedWeatherState({
    super.requestState = RequestState.loaded,
    super.weatherModel,
  });

  @override
  List<Object?> get props => [requestState, weatherModel];
}

class ErrorWeatherState extends WeatherState {
  const ErrorWeatherState({
    super.requestState = RequestState.error,
    super.weatherModel,
  });

  @override
  List<Object?> get props => [requestState, weatherModel];
}
