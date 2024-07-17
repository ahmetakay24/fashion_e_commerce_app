import 'package:auto_size_text/auto_size_text.dart';
import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:fashion_e_commerce_app/screens/menu/view/widgets/buttons/menu_buttons.dart';
import 'package:fashion_e_commerce_app/screens/menu/view/widgets/category_titles/menu_category_titles.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: sizeCalculator(size.width, 5.06),
                  right: sizeCalculator(size.width, 5.06),
                  bottom: sizeCalculator(size.height, 2.453125)),
              child: MenuCategoryButtons(size: size, colors: colors),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 4.171875)),
              child: MenuWomenCategoryTitles(
                size: size,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: sizeCalculator(size.width, 5.06)),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: sizeCalculator(size.height, 5.46875),
                  width: sizeCalculator(size.width, 42.93),
                  child: Row(
                    children: [
                      SizedBox(
                        height: sizeCalculator(size.height, 5.46875),
                        width: sizeCalculator(size.width, 6.39),
                        child: const AppIcons(icon: "Call"),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
