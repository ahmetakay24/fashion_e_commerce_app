import 'package:flutter/material.dart';

class AppIcons extends StatelessWidget {
  const AppIcons({super.key, required this.icon});
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Image.asset(fit: BoxFit.fitWidth, "assets/icons/$icon.png");
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

class AppStickers extends StatelessWidget {
  const AppStickers({super.key, required this.stickers});
  final String stickers;

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/stickers/$stickers.png");
  }
}

class AppBanner extends StatelessWidget {
  const AppBanner({super.key, required this.banner});
  final String banner;

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/banners/$banner.png");
  }
}
