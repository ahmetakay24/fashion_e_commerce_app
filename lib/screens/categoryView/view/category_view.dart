import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_custom_widgets.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();
    DeviceSize size = DeviceSize(context);

    return Scaffold(
      appBar: OpenFashionAppBar(
          context: context, colors: colors, size: size, appBarColors: Colors.white, iconBlackOrWhite: Colors.black),
      body: Column(
        children: [
          SizedBox(
            height: sizeCalculator(size.height, 5.01),
            width: size.width,
            child: const Row(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
