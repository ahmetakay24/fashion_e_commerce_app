import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_custom_widgets.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:fashion_e_commerce_app/resources/texts/main_screen/main_screen_texts_english.dart';
import 'package:fashion_e_commerce_app/screens/main_screen/model/main_screen_models.dart';
import 'package:fashion_e_commerce_app/screens/main_screen/view/widgets/app_bar_and_sections/main_screen_app_bar_and_sections.dart';
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
              child: InkWell(
                child: Row(
                  //4,79
                  //2,25
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
              ),
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
                child: const Column(
                  children: [
                    Spacer(),
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Expanded(flex: 4, child: AppLogos(logo: "dolce_gabbana")),
                          Spacer(),
                          Expanded(flex: 4, child: AppLogos(logo: "burberry")),
                          Spacer(),
                          Expanded(flex: 4, child: AppLogos(logo: "boss"))
                        ],
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Expanded(flex: 4, child: AppLogos(logo: "cartier")),
                          Spacer(),
                          Expanded(flex: 4, child: AppLogos(logo: "gucci")),
                          Spacer(),
                          Expanded(flex: 4, child: AppLogos(logo: "balmain"))
                        ],
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),
            ),
            AppHeaderLine(size: size, colors: colors),
            Padding(
              padding: EdgeInsets.only(top: sizeCalculator(size.height, 7.42), bottom: sizeCalculator(size.height, 2)),
              child: SizedBox(
                height: sizeCalculator(size.height, 5.01),
                width: sizeCalculator(size.width, 47.19),
                child: const FittedBox(fit: BoxFit.fitWidth, child: Text("COLLECTIONS")),
              ),
            ),
            SizedBox(
              height: sizeCalculator(size.height, 30.11),
              width: size.width,
              child: Image.asset(fit: BoxFit.cover, "assets/banners/october_collection.png"),
            ),
            Padding(
              padding: EdgeInsets.only(top: sizeCalculator(size.height, 5.01)),
              child: SizedBox(
                height: sizeCalculator(size.height, 37.13),
                width: sizeCalculator(size.width, 69.33),
                //padding will come
                child: Stack(
                  children: [
                    Image.asset(fit: BoxFit.cover, "assets/banners/autumn_collection.png"),
                    SizedBox(
                      height: sizeCalculator(size.height, 7.89),
                      width: sizeCalculator(size.width, 45.99),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                "Autumn",
                                style: TextStyle(/*Family style Bodoni Moda */),
                              ),
                            ),
                          ),
                          Expanded(child: FittedBox(fit: BoxFit.fitWidth, child: Text("COLLECTION")))
                        ],
                      ),
                    )
                  ],
                ),
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

class MainScreenClothesGridView extends StatelessWidget {
  const MainScreenClothesGridView({
    super.key,
    required this.size,
    required this.clothes,
  });

  final DeviceSize size;
  final List<MainScreenClothesModel> clothes;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 69.91),
      width: size.width,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: clothes.length >= 4 ? 4 : clothes.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: sizeCalculator(size.height, 1.5),
          childAspectRatio: (size.width / 2) / sizeCalculator(size.height, 32.64),
        ),
        itemBuilder: (context, index) {
          return SizedBox(
            height: sizeCalculator(DeviceSize(context).height, 32.64),
            width: sizeCalculator(DeviceSize(context).width, 43.99),
            child: Column(
              children: [
                SizedBox(
                  height: sizeCalculator(DeviceSize(context).height, 25.09),
                  width: sizeCalculator(DeviceSize(context).width, 43.99),
                  child: Image.asset(
                    fit: BoxFit.cover,
                    clothes[index].imageUrl,
                  ),
                ),
                SizedBox(
                  height: sizeCalculator(DeviceSize(context).height, 4.76),
                  width: sizeCalculator(DeviceSize(context).width, 43.99),
                  child: FittedBox(
                    child: Text(
                      clothes[index].name,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(
                  height: sizeCalculator(DeviceSize(context).width, 3.01),
                  width: sizeCalculator(DeviceSize(context).width, 8.53),
                  child: FittedBox(fit: BoxFit.fitWidth, child: Text(clothes[index].price)),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

/*left: sizeCalculator(size.width, 4.26),
                right: sizeCalculator(size.width, 4.26),
                top: sizeCalculator(size.height, 1.63),
                bottom: sizeCalculator(size.height, 1.48), */
