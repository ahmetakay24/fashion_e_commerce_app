import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:flutter/material.dart';

class MenuCategoryButtons extends StatelessWidget {
  const MenuCategoryButtons({
    super.key,
    required this.size,
    required this.colors,
  });

  final DeviceSize size;
  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 6.796875),
      width: size.width,
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: sizeCalculator(size.height, 5.46875),
                width: sizeCalculator(size.width, 19.73),
                child: const InkWell(
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      "WOMEN",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: sizeCalculator(size.height, 1.16),
                width: sizeCalculator(size.width, 29.94),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: colors.secondary,
                        thickness: 2,
                      ),
                    ),
                    Transform.rotate(
                      angle: 0.785398,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: colors.secondary, border: Border.all(color: colors.secondary)),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: colors.secondary,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: sizeCalculator(size.height, 5.46875),
                width: sizeCalculator(size.width, 11.46),
                child: const InkWell(
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      "MEN",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: sizeCalculator(size.height, 1.16),
                width: sizeCalculator(size.width, 29.94),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: colors.placeholder,
                        thickness: 2,
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
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: sizeCalculator(size.height, 5.46875),
                width: sizeCalculator(size.width, 11.99),
                child: const InkWell(
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      "KIDS",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: sizeCalculator(size.height, 1.16),
                width: sizeCalculator(size.width, 29.94),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: colors.placeholder,
                        thickness: 2,
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
              )
            ],
          )
        ],
      ),
    );
  }
}