import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class DataModel extends Equatable {
  final IconData icon;
  final Color iconColor;
  final String text;
  final String subText;

  const DataModel({
    required this.icon,
    required this.text,
    required this.subText,
    required this.iconColor,
  });

  @override
  List<Object?> get props => [icon, text, subText, iconColor];
}
