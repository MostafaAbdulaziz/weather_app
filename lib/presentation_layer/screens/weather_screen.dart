import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/enums/request_states.dart';
import 'package:weather/core/utils/colors_app.dart';
import 'package:weather/core/utils/strings_app.dart';
import 'package:weather/data_layer/models/weather_model.dart';
import 'package:weather/presentation_layer/controller/cubit_app.dart';
import 'package:weather/presentation_layer/controller/states_app.dart';
import 'package:weather/presentation_layer/widgets/loader_app.dart';

import '../widgets/current_weather_widget.dart';
import '../widgets/forecast_weather_widget.dart';
import '../widgets/message_display.dart';
import '../widgets/textform_widget.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      Scaffold(backgroundColor: ColorsApp.lightBlack, body: _buildScreenBody());
}

Widget _buildScreenBody() => SafeArea(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
    child: SingleChildScrollView(
      child: Column(
        children: [
          TextformApp(),
          BlocBuilder<WeatherCubit, WeatherState>(
            builder: (context, state) => _checkWeatherState(state),
          ),
        ],
      ),
    ),
  ),
);

Widget _checkWeatherState(WeatherState state) => switch (state.requestState) {
  RequestState.loading => LoaderApp(),
  RequestState.loaded => _buildWeatherUi(state.weatherModel!),
  RequestState.wait => MessageDisplay(text: ConstantStrings.waitTextSession),
  RequestState.error => MessageDisplay(text: ConstantStrings.errorMessage),
};

Widget _buildWeatherUi(WeatherModel weatherModel) => Column(
  mainAxisSize: MainAxisSize.min,
  children: [
    _createSpace(),
    CurrentWeatherUi(weatherModel: weatherModel),
    _createSpace(),
    ForecastWeatherUi(weatherModel: weatherModel),
  ],
);

Widget _createSpace() => SizedBox(height: 15);
