import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_custom_widgets.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:flutter/material.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    DeviceSize size = DeviceSize(context);
    AppColors colors = AppColors();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Padding(
          padding: EdgeInsets.only(left: sizeCalculator(size.width, 1.01)),
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: SizedBox(
              height: sizeCalculator(size.height, 2.109375),
              width: sizeCalculator(size.width, 3.59),
              child: const FittedBox(fit: BoxFit.cover, child: AppIcons(icon: "close")),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: sizeCalculator(size.width, 5.06),
                right: sizeCalculator(size.width, 5.06),
                bottom: sizeCalculator(size.height, 2.453125)),
            child: SizedBox(
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
                                decoration:
                                    BoxDecoration(color: colors.secondary, border: Border.all(color: colors.secondary)),
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
            ),
          )
        ],
      ),
    );
  }
}
