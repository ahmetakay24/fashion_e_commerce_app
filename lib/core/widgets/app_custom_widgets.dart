import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:flutter/material.dart';

class AppHeaderLine extends StatelessWidget {
  const AppHeaderLine({super.key, required this.size, required this.colors});
  final DeviceSize size;
  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 1.16),
      width: sizeCalculator(size.width, 33.33),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: colors.placeholder,
              thickness: 2,
            ),
          ),
          Transform.rotate(
            angle: 0.785398,
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(color: Colors.transparent, border: Border.all(color: colors.placeholder)),
            ),
          ),
          Expanded(
            child: Divider(
              color: colors.placeholder,
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}
