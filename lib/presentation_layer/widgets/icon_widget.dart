import 'package:flutter/cupertino.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  const IconWidget({super.key, required this.icon, required this.iconColor});

  @override
  Widget build(BuildContext context) => Icon(icon, color: iconColor, size: 40);
}
