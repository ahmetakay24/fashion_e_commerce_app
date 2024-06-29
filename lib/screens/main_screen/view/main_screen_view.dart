import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_custom_widgets.dart';
import 'package:fashion_e_commerce_app/resources/texts/main_screen/main_screen_texts_english.dart';
import 'package:fashion_e_commerce_app/screens/main_screen/model/main_screen_models.dart';
import 'package:fashion_e_commerce_app/screens/main_screen/view/widgets/app_bar_and_sections/main_screen_app_bar_and_sections.dart';
import 'package:fashion_e_commerce_app/screens/main_screen/view/widgets/builders/main_screen_builders.dart';
import 'package:fashion_e_commerce_app/screens/main_screen/view/widgets/buttons/main_screen_buttons.dart';
import 'package:flutter/material.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();
    DeviceSize size = DeviceSize(context);
    MainScreenEnglishTexts englishTexts = MainScreenEnglishTexts();

    List<MainScreenClothesModel> clothes = [
      MainScreenClothesModel(
        name: "WOOL AND SILK MARTINI-FIT TUXEDO SUIT",
        price: "\$ 4,195",
        imageUrl: "assets/clothes/dc_suit.png",
      ),
      MainScreenClothesModel(
        name: "PRINTED JACQUARD HOLDALL",
        price: "\$ 2,495",
        imageUrl: "assets/clothes/dc_bag.png",
      ),
      MainScreenClothesModel(
        name: "COTTON T-SHIRT WITH LOGO EMBROIDERY",
        price: "\$ 595",
        imageUrl: "assets/clothes/dc_tshirt.png",
      ),
      MainScreenClothesModel(
        name: "STRETCH COTTON PANTS WITH BRANDED TAG",
        price: "\$ 825",
        imageUrl: "assets/clothes/dc_pant.png",
      ),
    ];

    return Scaffold(
      appBar: MainScreenAppBar(
        context: context,
        colors: colors,
        size: size,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainScreenBanner(colors: colors, size: size),
            Padding(
              padding: EdgeInsets.only(
                  top: sizeCalculator(size.height, 4.44),
                  right: sizeCalculator(
                    size.width,
                    19.78,
                  ),
                  left: sizeCalculator(size.width, 19.78)),
              child: MainScreenNewArrivalTitle(
                size: size,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: sizeCalculator(size.height, 1.71),
                  left: sizeCalculator(size.width, 33.19),
                  right: sizeCalculator(size.width, 33.19)),
              child: AppHeaderLine(
                colors: colors,
                size: size,
              ),
            ),
            MainScreenFilterButtonsSection(colors: colors, size: size, englishTexts: englishTexts),
            Padding(
              padding: EdgeInsets.only(
                top: sizeCalculator(size.height, 1.63),
                bottom: sizeCalculator(size.height, 1.48),
              ),
              child: MainScreenClothesGridView(size: size, clothes: clothes),
            ),
            SizedBox(
              height: sizeCalculator(size.height, 6.02),
              width: sizeCalculator(size.width, 41.33),
              child: MainScreenExploreMoreButton(size: size),
            ),
            Padding(
              padding: EdgeInsets.only(top: sizeCalculator(size.height, 6.02)),
              child: AppHeaderLine(size: size, colors: colors),
            ),
            SizedBox(
              height: sizeCalculator(size.height, 17.35),
              width: size.width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: sizeCalculator(size.width, 5.59)),
                child: const MainScreenBrandLogos(),
              ),
            ),
            AppHeaderLine(size: size, colors: colors),
            Padding(
              padding: EdgeInsets.only(top: sizeCalculator(size.height, 7.42), bottom: sizeCalculator(size.height, 2)),
              child: MainScreenCollectionsTitle(size: size),
            ),
            SizedBox(
              height: sizeCalculator(size.height, 30.11),
              width: size.width,
              child: Image.asset(fit: BoxFit.cover, "assets/banners/october_collection.png"),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: sizeCalculator(size.height, 5.01), bottom: sizeCalculator(size.height, 5.01)),
              child: SizedBox(
                height: sizeCalculator(size.height, 37.13),
                width: sizeCalculator(size.width, 69.33),
                child: MainScreenAutumnCollectionBanner(size: size),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 9.02)),
              child: SizedBox(
                height: sizeCalculator(size.height, 22.08),
                width: size.width,
                child: Image.asset(
                  "assets/banners/dc_collection.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: sizeCalculator(size.height, 5.01),
              width: sizeCalculator(size.width, 48.53),
              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("JUST FOR YOU")),
            ),
            AppHeaderLine(size: size, colors: colors),
            SizedBox(
              height: sizeCalculator(size.height, 57.46),
              width: size.width,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: sizeCalculator(size.height, 2.89)),
                    child: SizedBox(
                      height: sizeCalculator(size.height, 48.93),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        padding: EdgeInsets.only(left: sizeCalculator(size.width, 4.23)),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: sizeCalculator(size.width, 2.53)),
                            height: sizeCalculator(size.height, 48.93),
                            width: sizeCalculator(size.width, 67.97),
                            color: AppColors().appBarColor,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: sizeCalculator(size.height, 39.13),
                                  child: Image.asset(
                                    clothes[index].imageUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: sizeCalculator(size.height, 0.5),
                                  ),
                                  child: SizedBox(
                                    height: sizeCalculator(size.height, 6.02),
                                    width: sizeCalculator(size.width, 61.94),
                                    child: FittedBox(fit: BoxFit.fitWidth, child: Text(clothes[index].name)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    bottom: sizeCalculator(size.height, 0.26),
                                  ),
                                  child: SizedBox(
                                    height: sizeCalculator(size.height, 3.01),
                                    width: sizeCalculator(size.width, 9.06),
                                    child: FittedBox(fit: BoxFit.fitWidth, child: Text(clothes[index].price)),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: sizeCalculator(size.height, 2.20)),
                    child: SizedBox(
                      height: sizeCalculator(size.height, 1),
                      width: sizeCalculator(size.width, 9.11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Transform.rotate(
                            angle: 0.785398,
                            child: Container(
                              width: sizeCalculator(size.height, 1),
                              height: sizeCalculator(size.width, 2.13),
                              decoration: BoxDecoration(
                                color: AppColors().secondary,
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: 0.785398,
                            child: Container(
                              width: sizeCalculator(size.height, 1),
                              height: sizeCalculator(size.width, 2.13),
                              decoration: BoxDecoration(
                                color: AppColors().secondary,
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: 0.785398,
                            child: Container(
                              width: sizeCalculator(size.height, 1),
                              height: sizeCalculator(size.width, 2.13),
                              decoration: BoxDecoration(
                                color: AppColors().secondary,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: sizeCalculator(size.height, 17.56),
              width: size.width,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: sizeCalculator(size.height, 0.75),
                      bottom: sizeCalculator(size.height, 1),
                    ),
                    child: SizedBox(
                      height: sizeCalculator(size.height, 5.01),
                      width: sizeCalculator(size.width, 40.79),
                      child: const FittedBox(fit: BoxFit.fitWidth, child: Text("@TRENDING")),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 1)),
                    child: SizedBox(
                      height: sizeCalculator(size.height, 4.01),
                      width: size.width,
                      child: Row(
                        children: [
                          Container(
                            width: sizeCalculator(size.width, 16.26),
                            margin: EdgeInsets.only(
                                left: sizeCalculator(size.width, 4.26), right: sizeCalculator(size.width, 1.33)),
                            decoration:
                                BoxDecoration(color: colors.inputBackground, borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: sizeCalculator(size.width, 2.66),
                                  vertical: sizeCalculator(size.height, 1)),
                              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("#2021")),
                            ),
                          ),
                          Container(
                            width: sizeCalculator(size.width, 19.99),
                            margin: EdgeInsets.only(right: sizeCalculator(size.width, 1.33)),
                            decoration:
                                BoxDecoration(color: colors.inputBackground, borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: sizeCalculator(size.width, 2.66),
                                  vertical: sizeCalculator(size.height, 1)),
                              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("#spring")),
                            ),
                          ),
                          Container(
                            width: sizeCalculator(size.width, 26.66),
                            margin: EdgeInsets.only(right: sizeCalculator(size.width, 1.33)),
                            decoration:
                                BoxDecoration(color: colors.inputBackground, borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: sizeCalculator(size.width, 2.66),
                                  vertical: sizeCalculator(size.height, 1)),
                              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("#collection")),
                            ),
                          ),
                          Container(
                            width: sizeCalculator(size.width, 14.39),
                            margin: EdgeInsets.only(right: sizeCalculator(size.width, 11.99)),
                            decoration:
                                BoxDecoration(color: colors.inputBackground, borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: sizeCalculator(size.width, 2.66),
                                  vertical: sizeCalculator(size.height, 1)),
                              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("#fall")),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 1.75)),
                    child: SizedBox(
                      height: sizeCalculator(size.height, 4.01),
                      width: size.width,
                      child: Row(
                        children: [
                          Container(
                            width: sizeCalculator(size.width, 18.39),
                            margin: EdgeInsets.only(
                                left: sizeCalculator(size.width, 4.26), right: sizeCalculator(size.width, 1.33)),
                            decoration:
                                BoxDecoration(color: colors.inputBackground, borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: sizeCalculator(size.width, 2.66),
                                  vertical: sizeCalculator(size.height, 1)),
                              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("#dress")),
                            ),
                          ),
                          Container(
                            width: sizeCalculator(size.width, 39.99),
                            margin: EdgeInsets.only(right: sizeCalculator(size.width, 1.33)),
                            decoration:
                                BoxDecoration(color: colors.inputBackground, borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: sizeCalculator(size.width, 2.66),
                                  vertical: sizeCalculator(size.height, 1)),
                              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("#autumncollection")),
                            ),
                          ),
                          Container(
                            width: sizeCalculator(size.width, 30.93),
                            margin: EdgeInsets.only(right: sizeCalculator(size.width, 1)),
                            decoration:
                                BoxDecoration(color: colors.inputBackground, borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: sizeCalculator(size.width, 2.66),
                                  vertical: sizeCalculator(size.height, 1)),
                              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("#openfashion")),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: colors.body,
            )
          ],
        ),
      ),
    );
  }
}
