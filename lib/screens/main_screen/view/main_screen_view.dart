import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_custom_widgets.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
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
            MainScreenOctoberCollectionBanner(size: size),
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

class MainScreenFollowUsSection extends StatelessWidget {
  const MainScreenFollowUsSection({
    super.key,
    required this.size,
  });

  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 59.97),
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: sizeCalculator(size.height, 2.00), bottom: sizeCalculator(size.height, 0.43)),
            child: SizedBox(
              height: sizeCalculator(size.height, 5.01),
              width: sizeCalculator(size.width, 38.93),
              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("FOLLOW US")),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 0.30)),
            child: SizedBox(
              height: sizeCalculator(size.height, 2.64),
              width: sizeCalculator(size.height, 5.62),
              child: const AppLogos(
                logo: "instagram",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sizeCalculator(size.width, 4.26)),
            child: SizedBox(
                height: sizeCalculator(size.height, 47.30),
                width: sizeCalculator(size.width, 100),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          buildBanner("mia"),
                          Padding(
                            padding: EdgeInsets.only(left: sizeCalculator(size.width, 3.73)),
                            child: buildBanner("jihyn"),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          buildBanner("mia2"),
                          Padding(
                            padding: EdgeInsets.only(left: sizeCalculator(size.width, 3.73)),
                            child: buildBanner("jihyn2"),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }

  Widget buildBanner(String photo) {
    return SizedBox(
      height: sizeCalculator(size.height, 20.57),
      width: sizeCalculator(size.width, 43.73),
      child: Stack(
        children: [
          SizedBox(
            height: sizeCalculator(size.height, 20.57),
            width: sizeCalculator(size.width, 43.73),
            child: FittedBox(fit: BoxFit.cover, child: AppBanner(banner: photo)),
          ),
        ],
      ),
    );
  }
}

/*Widget buildBanner(String nickname, String photo) {
    bool miaOrJihyn;

    if (nickname == "mia") {
      miaOrJihyn = true;
    } else {
      miaOrJihyn = false;
    }

    String text = miaOrJihyn ? "@mia" : "@_jihyn";

    return SizedBox(
      height: sizeCalculator(size.height, 20.57),
      width: sizeCalculator(size.width, 43.73),
      child: Stack(
        children: [
          SizedBox(
            height: sizeCalculator(size.height, 20.57),
            width: sizeCalculator(size.width, 43.73),
            child: FittedBox(fit: BoxFit.cover, child: AppBanner(banner: photo)),
          ),
          Padding(
            padding: EdgeInsets.only(top: sizeCalculator(size.height, 17.06), left: sizeCalculator(size.width, 2.39)),
            child: SizedBox(
              height: sizeCalculator(size.height, 2.00),
              width: miaOrJihyn ? sizeCalculator(size.width, 11.19) : sizeCalculator(size.width, 16.79),
              child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  } */