import 'package:equatable/equatable.dart';

class ConditionModel extends Equatable {
  final String iconImage;

  const ConditionModel({required this.iconImage});

  factory ConditionModel.fromJson(Map<String, dynamic> json) =>
      ConditionModel(iconImage: json['icon']);
  @override
  List<Object?> get props => [iconImage];
}
