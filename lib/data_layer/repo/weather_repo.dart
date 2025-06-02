import '../data_source/base_remote_data_source.dart';
import '../models/weather_model.dart';

class WeatherRepo {
  final BaseRemoteDataSource baseRemoteDataSource;
  const WeatherRepo({required this.baseRemoteDataSource});
  Future<WeatherModel> getWeather() => baseRemoteDataSource.getWeather();
}
