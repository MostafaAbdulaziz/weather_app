import 'package:weather/data_layer/models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel> getWeather();
}
