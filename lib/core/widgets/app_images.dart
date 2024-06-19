import 'package:flutter/material.dart';

class AppIcons extends StatelessWidget {
  const AppIcons({super.key, required this.icon});
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/icons/$icon.png");
  }
}

class AppLogos extends StatelessWidget {
  const AppLogos({super.key, required this.logo});
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/logos/$logo.png");
  }
}
