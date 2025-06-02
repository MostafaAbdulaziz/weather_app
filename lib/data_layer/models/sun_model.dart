import 'package:equatable/equatable.dart';

class SunModel extends Equatable {
  final String sunrise;
  final String sunset;

  const SunModel({required this.sunrise, required this.sunset});

  factory SunModel.fromJson(Map<String, dynamic> json) =>
      SunModel(sunrise: json['sunrise'], sunset: json['sunset']);

  @override
  List<Object?> get props => [sunrise, sunset];
}
