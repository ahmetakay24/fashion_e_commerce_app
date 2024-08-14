import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:flutter/material.dart';

class AppTheme {
  final BuildContext context;
  final AppColors colors = AppColors();
  late final DeviceSize size;
  late final ThemeData themeData;

  AppTheme(this.context) {
    size = DeviceSize(context);
    themeData = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "TenorSans",
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 18,
          color: colors.titleActive,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          color: colors.titleActive,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          color: colors.titleActive,
        ),
        bodyLarge: const TextStyle(),
        bodyMedium: const TextStyle(),
        bodySmall: const TextStyle(),
      ),
      appBarTheme: AppBarTheme(
        toolbarHeight: sizeCalculator(size.height, 7.52),
      ),
    );
  }
}
