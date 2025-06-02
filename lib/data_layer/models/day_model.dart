import 'package:equatable/equatable.dart';

class DayModel extends Equatable {
  final double minTemp;
  final double maxTemp;
  final double averageTemp;

  const DayModel({
    required this.minTemp,
    required this.maxTemp,
    required this.averageTemp,
  });
  factory DayModel.fromJson(Map<String, dynamic> json) => DayModel(
    minTemp: json['mintemp_c'],
    maxTemp: json['maxtemp_c'],
    averageTemp: json['avgtemp_c'],
  );

  @override
  List<Object?> get props => [minTemp, maxTemp, averageTemp];
}
