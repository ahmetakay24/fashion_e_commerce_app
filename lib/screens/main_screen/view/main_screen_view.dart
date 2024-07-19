import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_custom_widgets.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:fashion_e_commerce_app/resources/texts/main_screen/main_screen_texts_english.dart';
import 'package:fashion_e_commerce_app/screens/main_screen/model/main_screen_models.dart';
import 'package:fashion_e_commerce_app/screens/main_screen/view/widgets/app_bar_and_sections/main_screen_app_bar_and_sections.dart';
import 'package:fashion_e_commerce_app/screens/main_screen/view/widgets/builders/main_screen_builders.dart';
import 'package:fashion_e_commerce_app/screens/main_screen/view/widgets/buttons/main_screen_buttons.dart';
import 'package:fashion_e_commerce_app/screens/october_collection/view/october_collection_view.dart';
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
      appBar: OpenFashionAppBar(
        iconBlackOrWhite: Colors.black,
        appBarColors: colors.appBarColor,
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
            MainScreenExploreMoreButton(size: size),
            Padding(
              padding: EdgeInsets.only(top: sizeCalculator(size.height, 6.02)),
              child: AppHeaderLine(size: size, colors: colors),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: sizeCalculator(size.width, 5.59)),
              child: MainScreenBrandLogos(
                size: size,
              ),
            ),
            AppHeaderLine(size: size, colors: colors),
            Padding(
              padding: EdgeInsets.only(top: sizeCalculator(size.height, 7.42), bottom: sizeCalculator(size.height, 2)),
              child: MainScreenCollectionsTitle(size: size),
            ),
            InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OctoberCollectionView(
                        colors: colors,
                        size: size,
                      ),
                    )),
                child: MainScreenOctoberCollectionBanner(size: size)),
            Padding(
              padding:
                  EdgeInsets.only(top: sizeCalculator(size.height, 5.01), bottom: sizeCalculator(size.height, 5.01)),
              child: MainScreenAutumnCollectionBanner(size: size),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 9.02)),
              child: MainScreenDcCollectionBanner(size: size),
            ),
            MainScreenJustForYouTitle(size: size),
            AppHeaderLine(size: size, colors: colors),
            MainScreenJustForYouProductsBuilder(size: size, clothes: clothes),
            Padding(
              padding:
                  EdgeInsets.only(top: sizeCalculator(size.height, 4.76), bottom: sizeCalculator(size.height, 2.81)),
              child: MainScreenTagsSection(size: size, colors: colors),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 2.08)),
              child: MainScreenOpenFashionSection(size: size, colors: colors),
            ),
            MainScreenFollowUsSection(size: size),
            AppFooter(size: size, colors: colors),
          ],
        ),
      ),
    );
  }
}

class AppFooter extends StatelessWidget {
  const AppFooter({
    super.key,
    required this.size,
    required this.colors,
  });

  final DeviceSize size;
  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 45),
      width: size.width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: sizeCalculator(size.height, 3.01)),
            child: SizedBox(
                height: sizeCalculator(size.height, 3.01),
                width: sizeCalculator(size.width, 43.19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: sizeCalculator(size.height, 3.01),
                        width: sizeCalculator(size.width, 6.39),
                        child: const AppIcons(icon: "x")),
                    SizedBox(
                        height: sizeCalculator(size.height, 3.01),
                        width: sizeCalculator(size.width, 6.39),
                        child: const AppIcons(icon: "instagram_vector")),
                    SizedBox(
                        height: sizeCalculator(size.height, 3.01),
                        width: sizeCalculator(size.width, 6.39),
                        child: const AppIcons(icon: "youtube")),
                  ],
                )),
          ),
          Padding(
              padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 2.34)),
              child: AppHeaderLine(size: size, colors: colors)),
          SizedBox(
            height: sizeCalculator(size.height, 13.40),
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
                  EdgeInsets.only(top: sizeCalculator(size.height, 2.34), bottom: sizeCalculator(size.height, 4.01)),
              child: AppHeaderLine(size: size, colors: colors)),
          Padding(
            padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 2.88)),
            child: SizedBox(
              height: sizeCalculator(size.height, 3.01),
              width: sizeCalculator(size.width, 65.86),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: sizeCalculator(size.height, 3.01),
                    width: sizeCalculator(size.width, 12.53),
                    child: const FittedBox(fit: BoxFit.fitWidth, child: Text("About")),
                  ),
                  SizedBox(
                    height: sizeCalculator(size.height, 3.01),
                    width: sizeCalculator(size.width, 16.26),
                    child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Contact")),
                  ),
                  SizedBox(
                    height: sizeCalculator(size.height, 3.01),
                    width: sizeCalculator(size.width, 9.33),
                    child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Blog")),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: sizeCalculator(size.height, 5.67),
            width: size.width,
            color: colors.inputBackground,
            child: Padding(
              padding: EdgeInsets.only(
                  left: sizeCalculator(size.width, 18.26),
                  right: sizeCalculator(size.width, 18.26),
                  top: sizeCalculator(size.height, 1.39),
                  bottom: sizeCalculator(size.height, 1.90)),
              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Copyright© OpenUI All Rights Reserved.")),
            ),
          )
        ],
      ),
    );
  }
}
