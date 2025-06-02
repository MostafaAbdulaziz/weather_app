import 'package:equatable/equatable.dart';
import 'package:weather/data_layer/models/sun_model.dart';

import 'day_model.dart';

class ForeCastDayModel extends Equatable {
  final DayModel dayModel;
  final SunModel sunModel;

  const ForeCastDayModel({required this.dayModel, required this.sunModel});

  factory ForeCastDayModel.fromJson(Map<String, dynamic> json) =>
      ForeCastDayModel(
        dayModel: DayModel.fromJson(json['day']),
        sunModel: SunModel.fromJson(json['astro']),
      );

  @override
  List<Object?> get props => [dayModel];
}
