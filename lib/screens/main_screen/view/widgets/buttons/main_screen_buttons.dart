import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:fashion_e_commerce_app/resources/texts/main_screen/main_screen_texts_english.dart';
import 'package:flutter/material.dart';

class MainScreenExploreMoreButton extends StatelessWidget {
  const MainScreenExploreMoreButton({
    super.key,
    required this.size,
  });

  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              height: sizeCalculator(size.height, 3.01),
              width: sizeCalculator(size.width, 27.99),
              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Explore More"))),
          SizedBox(
              height: sizeCalculator(size.height, 2.25),
              width: sizeCalculator(size.width, 4.79),
              child: const FittedBox(fit: BoxFit.cover, child: AppIcons(icon: "forward_arrow")))
        ],
      ),
    );
  }
}

class MainScreenFilterButtonsSection extends StatelessWidget {
  const MainScreenFilterButtonsSection({super.key, required this.colors, required this.size, required this.englishTexts});
  final AppColors colors;
  final DeviceSize size;
  final MainScreenEnglishTexts englishTexts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: sizeCalculator(size.height, 4.51),
              width: size.width,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: sizeCalculator(size.height, 1.12),
                        left: sizeCalculator(size.width, 11.33),
                        right: sizeCalculator(size.width, 11.33)),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height: sizeCalculator(size.height, 1.88),
                                width: sizeCalculator(size.width, 5.59),
                                child: FittedBox(
                                    fit: BoxFit.fitWidth, child: InkWell(onTap: null, child: Text(englishTexts.all)))),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: sizeCalculator(size.width, 6.93)),
                          child: SizedBox(
                              height: sizeCalculator(size.height, 1.88),
                              width: sizeCalculator(size.width, 11.19),
                              child: FittedBox(
                                  fit: BoxFit.fitWidth, child: InkWell(onTap: null, child: Text(englishTexts.pants)))),
                        ),
                        SizedBox(
                            height: sizeCalculator(size.height, 1.88),
                            width: sizeCalculator(size.width, 11.19),
                            child: FittedBox(
                                fit: BoxFit.fitWidth, child: InkWell(onTap: null, child: Text(englishTexts.suits)))),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: sizeCalculator(size.width, 6.93)),
                          child: SizedBox(
                              height: sizeCalculator(size.height, 1.88),
                              width: sizeCalculator(size.width, 11.19),
                              child: FittedBox(
                                  fit: BoxFit.fitWidth, child: InkWell(onTap: null, child: Text(englishTexts.tshirt)))),
                        ),
                        SizedBox(
                            height: sizeCalculator(size.height, 1.88),
                            width: sizeCalculator(size.width, 7.46),
                            child: FittedBox(
                                fit: BoxFit.fitWidth, child: InkWell(onTap: null, child: Text(englishTexts.bag)))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizeCalculator(size.height, 1.5),
                    width: sizeCalculator(size.width, 77.33),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Transform.rotate(
                            angle: 0.785398,
                            child: Container(
                              width: 5.7,
                              height: 5.7,
                              decoration: BoxDecoration(
                                color: colors.secondary,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55),
                          child: Transform.rotate(
                            angle: 0.785398,
                            child: Container(
                              width: 5.7,
                              height: 5.7,
                              decoration: BoxDecoration(
                                color: colors.secondary,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 65),
                          child: Transform.rotate(
                            angle: 0.785398,
                            child: Container(
                              width: 5.7,
                              height: 5.7,
                              decoration: BoxDecoration(
                                color: colors.secondary,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 65.5),
                          child: Transform.rotate(
                            angle: 0.785398,
                            child: Container(
                              width: 5.7,
                              height: 5.7,
                              decoration: BoxDecoration(
                                color: colors.secondary,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 57),
                          child: Transform.rotate(
                            angle: 0.785398,
                            child: Container(
                              width: 5.7,
                              height: 5.7,
                              decoration: BoxDecoration(
                                color: colors.secondary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
  }
}