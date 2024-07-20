import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_custom_widgets.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: sizeCalculator(size.height, 3.76)),
              child: SizedBox(
                height: sizeCalculator(size.height, 74.27),
                width: size.width,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    SizedBox(
                      height: sizeCalculator(size.height, 15.72),
                      width: sizeCalculator(size.width, 43.46),
                      child: const AppStickers(stickers: "10"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: sizeCalculator(size.height, 1.99),
                          left: sizeCalculator(size.width, 30.10),
                          right: sizeCalculator(size.width, 26.42)),
                      child: SizedBox(
                        height: sizeCalculator(size.height, 6.6),
                        width: sizeCalculator(size.width, 43.54),
                        child: const FittedBox(
                          fit: BoxFit.fitWidth,
                          child: AppStickers(
                            stickers: "october_text",
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: sizeCalculator(size.height, 7.94),
                          left: sizeCalculator(size.width, 31.89),
                          right: sizeCalculator(size.width, 29.27)),
                      child: SizedBox(
                        height: sizeCalculator(size.height, 3.65),
                        width: sizeCalculator(size.width, 38.82),
                        child: const FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              "COLLECTION",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: sizeCalculator(size.height, 12.30)),
                      child: SizedBox(
                        height: sizeCalculator(size.height, 57.28),
                        width: sizeCalculator(size.width, 91.46),
                        child: const FittedBox(
                          fit: BoxFit.cover,
                          child: AppBanner(
                            banner: "october_1_image",
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: sizeCalculator(size.height, 70.61)),
                      child: SizedBox(
                        height: sizeCalculator(size.height, 3.76),
                        width: sizeCalculator(size.width, 91.46),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: sizeCalculator(size.width, 2.85)),
                              child: SizedBox(
                                height: sizeCalculator(size.height, 3.76),
                                width: sizeCalculator(size.width, 5.06),
                                child: const FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    "01",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: sizeCalculator(size.width, 2.63)),
                              child: SizedBox(
                                width: sizeCalculator(size.width, 29.11),
                                child: Divider(
                                  height: sizeCalculator(size.height, 0.12),
                                  color: colors.body,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: sizeCalculator(size.height, 3.76),
                              width: sizeCalculator(size.width, 51.81),
                              child: const FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    "OCTOBER COLLECTION",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //AppFooter(size: size, colors: colors)
          ],
        ),
      ),
    );
  }
}
