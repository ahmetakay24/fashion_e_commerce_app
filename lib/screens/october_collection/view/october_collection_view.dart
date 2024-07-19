import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_custom_widgets.dart';
import 'package:flutter/material.dart';

class OctoberCollectionView extends StatelessWidget {
  const OctoberCollectionView({super.key, required this.colors, required this.size});

  final AppColors colors;
  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OpenFashionAppBar(
        iconBlackOrWhite: Colors.white,
        context: context,
        colors: colors,
        size: size,
        appBarColors: Colors.black,
      ),
    );
  }
}
