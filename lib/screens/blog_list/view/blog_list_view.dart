import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BlogListView extends StatelessWidget {
  const BlogListView({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();
    DeviceSize size = DeviceSize(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: OpenFashionAppBar(
          context: context, colors: colors, size: size, appBarColors: Colors.white, iconBlackOrWhite: Colors.black),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: sizeCalculator(size.height, 3.70)),
              child: SizedBox(
                height: sizeCalculator(size.height, 4.09),
                width: sizeCalculator(size.width, 18.87),
                child: const FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "BLOG",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 3.47)),
                child: AppHeaderLine(size: size, colors: colors)),
            SizedBox(
              height: sizeCalculator(size.height, 4.01),
              width: size.width,
              child: ListView(
                padding: EdgeInsets.only(left: sizeCalculator(size.width, 4.26)),
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)), color: colors.inputBackground),
                    height: sizeCalculator(size.height, 4.01),
                    width: sizeCalculator(size.width, 19.46),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: sizeCalculator(size.height, 1.00), horizontal: sizeCalculator(size.width, 2.66)),
                      child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Fashion")),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: sizeCalculator(size.width, 3.19)),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)), color: colors.inputBackground),
                      height: sizeCalculator(size.height, 4.01),
                      width: sizeCalculator(size.width, 19.46),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: sizeCalculator(size.height, 1.00), horizontal: sizeCalculator(size.width, 2.66)),
                        child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Fashion")),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)), color: colors.inputBackground),
                    height: sizeCalculator(size.height, 4.01),
                    width: sizeCalculator(size.width, 19.46),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: sizeCalculator(size.height, 1.00), horizontal: sizeCalculator(size.width, 2.66)),
                      child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Fashion")),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: sizeCalculator(size.width, 3.19)),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)), color: colors.inputBackground),
                      height: sizeCalculator(size.height, 4.01),
                      width: sizeCalculator(size.width, 19.46),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: sizeCalculator(size.height, 1.00), horizontal: sizeCalculator(size.width, 2.66)),
                        child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Fashion")),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)), color: colors.inputBackground),
                    height: sizeCalculator(size.height, 4.01),
                    width: sizeCalculator(size.width, 19.46),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: sizeCalculator(size.height, 1.00), horizontal: sizeCalculator(size.width, 2.66)),
                      child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Fashion")),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: sizeCalculator(size.width, 3.19)),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)), color: colors.inputBackground),
                      height: sizeCalculator(size.height, 4.01),
                      width: sizeCalculator(size.width, 19.46),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: sizeCalculator(size.height, 1.00), horizontal: sizeCalculator(size.width, 2.66)),
                        child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Fashion")),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
