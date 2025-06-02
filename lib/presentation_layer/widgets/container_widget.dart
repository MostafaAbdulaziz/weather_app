import 'package:flutter/material.dart';

import '../../core/utils/colors_app.dart';

class ContainerWidget extends StatelessWidget {
  final List<Widget> children;
  const ContainerWidget({super.key, required this.children});

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.all(5),
    width: double.infinity,
    decoration: BoxDecoration(
      color: ColorsApp.darkBlack,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    ),
  );
}
