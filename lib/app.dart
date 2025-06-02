import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/presentation_layer/controller/cubit_app.dart';
import 'package:weather/presentation_layer/screens/weather_screen.dart';

class StatPointApp extends StatelessWidget {
  const StatPointApp({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (BuildContext context) => WeatherCubit(),
    child: MaterialApp(
      home: WeatherScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
