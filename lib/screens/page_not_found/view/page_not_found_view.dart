import 'package:auto_size_text/auto_size_text.dart';
import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_custom_widgets.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:flutter/material.dart';

class PageNotFoundView extends StatelessWidget {
  const PageNotFoundView({super.key});

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
              padding:
                  EdgeInsets.only(top: sizeCalculator(size.height, 4.22), bottom: sizeCalculator(size.height, 7.86)),
              child: SizedBox(
                height: sizeCalculator(size.height, 4.09),
                width: sizeCalculator(size.width, 61.65),
                child: const FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text("PAGE NOT FOUND"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 2.83)),
              child: SizedBox(
                height: sizeCalculator(size.height, 6.02),
                width: sizeCalculator(size.width, 6.93),
                child: const FittedBox(fit: BoxFit.cover, child: AppIcons(icon: "dressmaker")),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 2.69)),
              child: SizedBox(
                height: sizeCalculator(size.height, 8.77),
                width: sizeCalculator(size.width, 72.55),
                child: const AutoSizeText(
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  "We can't find the page you looking for, it will return to the",
                  presetFontSizes: [20, 19, 18, 17, 16, 15],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 8.03)),
              child: Container(
                color: Colors.black,
                height: sizeCalculator(size.height, 5.01),
                width: sizeCalculator(size.width, 52.26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: sizeCalculator(size.height, 3.01),
                      width: sizeCalculator(size.width, 6.39),
                      child: const AppIcons(icon: "backward_white"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: sizeCalculator(size.width, 2.39)),
                      child: SizedBox(
                        height: sizeCalculator(size.height, 3.01),
                        width: sizeCalculator(size.width, 27.73),
                        child: const FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "HOME PAGE",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //AppFooter will come
          ],
        ),
      ),
    );
  }
}
