import 'package:dio/dio.dart';
import 'package:weather/core/network/apis.dart';
import 'package:weather/core/network/dio_helper/dio_helper.dart';
import 'package:weather/data_layer/models/weather_model.dart';

import '../../core/utils/global_variable.dart';
import 'base_remote_data_source.dart';

class GettingWeatherData implements BaseRemoteDataSource {
  @override
  Future<WeatherModel> getWeather() async {
    Response response = await DioHelper.getData(
      api: ApiApp.getWeatherApi(searchController.text),
    );
    if (response.statusCode == 200) {
      return WeatherModel.fromJson(response.data);
    } else {
      throw Exception();
    }
  }
}
