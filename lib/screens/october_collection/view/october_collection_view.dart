import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_custom_widgets.dart';
import 'package:fashion_e_commerce_app/screens/october_collection/view/widgets/sections/october_collection_sections.dart';
import 'package:flutter/material.dart';

class OctoberCollectionView extends StatelessWidget {
  const OctoberCollectionView({super.key, required this.colors, required this.size});

  final AppColors colors;
  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: OpenFashionAppBar(
        iconBlackOrWhite: Colors.white,
        context: context,
        colors: colors,
        size: size,
        appBarColors: Colors.black,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: sizeCalculator(size.height, 3.76), bottom: sizeCalculator(size.height, 4.34)),
            child: OctoberCollection1(size: size, colors: colors),
          ),
          OctoberCollection2(size: size, colors: colors),
          Padding(
            padding: EdgeInsets.symmetric(vertical: sizeCalculator(size.height, 4.34)),
            child: OctoberCollection3(size: size, colors: colors),
          ),
          AppFooter(size: size, colors: colors)
        ],
      ),
    );
  }
}
