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
            /*SizedBox(
              height: sizeCalculator(size.height, 47.75),
              width: size.width,
              child: Column(
                children: [
                  CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  height: sizeCalculator(widget.size.height, 75.28),
                  width: widget.size.width,
                  color: widget.colors.appBarColor,
                  child: CachedNetworkImage(
                    imageUrl: imageList[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
              options: CarouselOptions(
                  height: sizeCalculator(widget.size.height, 75.28),
                  //If I make photos full cover
                  //viewportFraction: 1,
                  onPageChanged: (index, reason) => setState(() {
                        activeIndex = index;
                      }),
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5)))
                ],
              ),
            ),*/
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
