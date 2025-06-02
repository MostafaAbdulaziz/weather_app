import 'package:bloc/bloc.dart';
import 'package:weather/data_layer/repo/weather_repo.dart';
import 'package:weather/presentation_layer/controller/states_app.dart';

import '../../core/enums/request_states.dart';
import '../../data_layer/data_source/base_remote_data_source.dart';
import '../../data_layer/data_source/remote_data_source.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(InitialWeatherState(requestState: RequestState.wait));

  Future<void> getWeather() async {
    emit(LoadingWeatherState());
    BaseRemoteDataSource baseRemoteDataSource = GettingWeatherData();
    WeatherRepo weatherRepo = WeatherRepo(
      baseRemoteDataSource: baseRemoteDataSource,
    );
    await _checkWeatherRequest(weatherRepo);
  }

  Future<void> _checkWeatherRequest(WeatherRepo weatherRepo) => weatherRepo
      .getWeather()
      .then((weatherData) {
        emit(LoadedWeatherState(weatherModel: weatherData));
      })
      .catchError((error) {
        emit(ErrorWeatherState());
      });
}
