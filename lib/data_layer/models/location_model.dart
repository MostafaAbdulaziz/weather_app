import 'package:equatable/equatable.dart';

class LocationModel extends Equatable {
  final String cityName;
  final String countryName;
  final String localTime;

  const LocationModel({
    required this.cityName,
    required this.countryName,
    required this.localTime,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
    cityName: json['name'],
    countryName: json['country'],
    localTime: json['localtime'],
  );

  @override
  List<Object?> get props => [cityName, countryName, localTime];
}
