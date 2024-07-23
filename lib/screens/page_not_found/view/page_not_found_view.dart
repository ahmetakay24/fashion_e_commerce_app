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

    double bottomPadding = MediaQuery.of(context).viewPadding.bottom;
    bool hasPhysicalHomeButton = bottomPadding == 0;

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
            Padding(
              padding: EdgeInsets.only(bottom: hasPhysicalHomeButton ? 0 : sizeCalculator(size.height, 3.52)),
              child: PageNotFoundAppFooter(size: size, colors: colors),
            ),
          ],
        ),
      ),
    );
  }
}

class PageNotFoundAppFooter extends StatelessWidget {
  const PageNotFoundAppFooter({
    super.key,
    required this.size,
    required this.colors,
  });

  final DeviceSize size;
  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: sizeCalculator(size.height, 32.49),
      width: size.width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: sizeCalculator(size.height, 2.17)),
            child: SizedBox(
                height: sizeCalculator(size.height, 2.17),
                width: sizeCalculator(size.width, 43.19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: sizeCalculator(size.height, 2.17),
                        width: sizeCalculator(size.width, 4.62),
                        child: const FittedBox(fit: BoxFit.cover, child: AppIcons(icon: "x"))),
                    SizedBox(
                        height: sizeCalculator(size.height, 2.17),
                        width: sizeCalculator(size.width, 4.62),
                        child: const FittedBox(fit: BoxFit.cover, child: AppIcons(icon: "instagram_vector"))),
                    SizedBox(
                        height: sizeCalculator(size.height, 2.17),
                        width: sizeCalculator(size.width, 4.62),
                        child: const FittedBox(fit: BoxFit.cover, child: AppIcons(icon: "youtube"))),
                  ],
                )),
          ),
          Padding(
              padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 1.69)),
              child: AppHeaderLine(size: size, colors: colors)),
          SizedBox(
            height: sizeCalculator(size.height, 9.67),
            width: sizeCalculator(size.width, 49.06),
            child: const Column(
              children: [
                Expanded(child: FittedBox(fit: BoxFit.fitWidth, child: Text("support@openui.design"))),
                Expanded(
                    child: Row(
                  children: [
                    Spacer(),
                    Expanded(
                      flex: 4,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text("+60 825 876"),
                      ),
                    ),
                    Spacer()
                  ],
                )),
                Expanded(child: FittedBox(fit: BoxFit.fitWidth, child: Text("08:00 - 22:00 - Everyday")))
              ],
            ),
          ),
          Padding(
              padding:
                  EdgeInsets.only(top: sizeCalculator(size.height, 1.69), bottom: sizeCalculator(size.height, 2.89)),
              child: AppHeaderLine(size: size, colors: colors)),
          Padding(
            padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 2.08)),
            child: SizedBox(
              height: sizeCalculator(size.height, 2.17),
              width: sizeCalculator(size.width, 65.86),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: sizeCalculator(size.height, 2.17),
                    width: sizeCalculator(size.width, 12.53),
                    child: const FittedBox(fit: BoxFit.fitWidth, child: Text("About")),
                  ),
                  SizedBox(
                    height: sizeCalculator(size.height, 2.17),
                    width: sizeCalculator(size.width, 16.26),
                    child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Contact")),
                  ),
                  SizedBox(
                    height: sizeCalculator(size.height, 2.17),
                    width: sizeCalculator(size.width, 9.33),
                    child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Blog")),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: sizeCalculator(size.height, 4.09),
            width: size.width,
            color: colors.inputBackground,
            child: Padding(
              padding: EdgeInsets.only(
                  left: sizeCalculator(size.width, 18.26),
                  right: sizeCalculator(size.width, 18.26),
                  top: sizeCalculator(size.height, 1.00),
                  bottom: sizeCalculator(size.height, 1.37)),
              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Copyright© OpenUI All Rights Reserved.")),
            ),
          )
        ],
      ),
    );
  }
}
