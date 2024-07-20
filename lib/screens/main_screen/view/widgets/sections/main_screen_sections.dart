import 'package:auto_size_text/auto_size_text.dart';
import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_custom_widgets.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:flutter/material.dart';

//New Arrival Section

class MainScreenNewArrivalTitle extends StatelessWidget {
  const MainScreenNewArrivalTitle({super.key, required this.size});
  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 4.09),
      width: sizeCalculator(size.width, 60.13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(
                left: sizeCalculator(size.width, 6.66),
                right: sizeCalculator(size.width, 6.66),
                top: sizeCalculator(size.height, 0.62)),
            child: const FittedBox(fit: BoxFit.fitWidth, child: Text("NEW ARRIVAL")),
          ))
        ],
      ),
    );
  }
}

class MainScreenBrandLogos extends StatelessWidget {
  const MainScreenBrandLogos({
    super.key,
    required this.size,
  });
  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 17.35),
      width: size.width,
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
    );
  }
}

class MainScreenCollectionsTitle extends StatelessWidget {
  const MainScreenCollectionsTitle({
    super.key,
    required this.size,
  });

  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 5.01),
      width: sizeCalculator(size.width, 47.19),
      child: const FittedBox(fit: BoxFit.fitWidth, child: Text("COLLECTIONS")),
    );
  }
}

class MainScreenAutumnCollectionBanner extends StatelessWidget {
  const MainScreenAutumnCollectionBanner({
    super.key,
    required this.size,
  });

  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 37.13),
      width: sizeCalculator(size.width, 69.33),
      child: Stack(
        children: [
          Image.asset(fit: BoxFit.cover, "assets/banners/autumn_collection.png"),
          Padding(
            padding: EdgeInsets.only(
                left: sizeCalculator(size.width, 22.87),
                top: sizeCalculator(size.height, 4.10),
                right: sizeCalculator(size.width, 0.45)),
            child: SizedBox(
              height: sizeCalculator(size.height, 7.89),
              width: sizeCalculator(size.width, 45.99),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Expanded(
                    flex: 3,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "Autumn",
                        style: TextStyle(fontFamily: "BodoniModa", color: Color.fromRGBO(78, 81, 80, 1)),
                      ),
                    ),
                  ),
                  Expanded(
                      child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Padding(
                              padding: EdgeInsets.only(left: sizeCalculator(size.width, 4.55)),
                              child: const Text("COLLECTION"))))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MainScreenTagsSection extends StatelessWidget {
  const MainScreenTagsSection({
    super.key,
    required this.size,
    required this.colors,
  });

  final DeviceSize size;
  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    decoration: BoxDecoration(color: colors.inputBackground, borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: sizeCalculator(size.width, 2.66), vertical: sizeCalculator(size.height, 1)),
                      child: const FittedBox(fit: BoxFit.fitWidth, child: Text("#2021")),
                    ),
                  ),
                  Container(
                    width: sizeCalculator(size.width, 19.99),
                    margin: EdgeInsets.only(right: sizeCalculator(size.width, 1.33)),
                    decoration: BoxDecoration(color: colors.inputBackground, borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: sizeCalculator(size.width, 2.66), vertical: sizeCalculator(size.height, 1)),
                      child: const FittedBox(fit: BoxFit.fitWidth, child: Text("#spring")),
                    ),
                  ),
                  Container(
                    width: sizeCalculator(size.width, 26.66),
                    margin: EdgeInsets.only(right: sizeCalculator(size.width, 1.33)),
                    decoration: BoxDecoration(color: colors.inputBackground, borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: sizeCalculator(size.width, 2.66), vertical: sizeCalculator(size.height, 1)),
                      child: const FittedBox(fit: BoxFit.fitWidth, child: Text("#collection")),
                    ),
                  ),
                  Container(
                    width: sizeCalculator(size.width, 14.39),
                    margin: EdgeInsets.only(right: sizeCalculator(size.width, 11.99)),
                    decoration: BoxDecoration(color: colors.inputBackground, borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: sizeCalculator(size.width, 2.66), vertical: sizeCalculator(size.height, 1)),
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
                    decoration: BoxDecoration(color: colors.inputBackground, borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: sizeCalculator(size.width, 2.66), vertical: sizeCalculator(size.height, 1)),
                      child: const FittedBox(fit: BoxFit.fitWidth, child: Text("#dress")),
                    ),
                  ),
                  Container(
                    width: sizeCalculator(size.width, 39.99),
                    margin: EdgeInsets.only(right: sizeCalculator(size.width, 1.33)),
                    decoration: BoxDecoration(color: colors.inputBackground, borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: sizeCalculator(size.width, 2.66), vertical: sizeCalculator(size.height, 1)),
                      child: const FittedBox(fit: BoxFit.fitWidth, child: Text("#autumncollection")),
                    ),
                  ),
                  Container(
                    width: sizeCalculator(size.width, 30.93),
                    margin: EdgeInsets.only(right: sizeCalculator(size.width, 1)),
                    decoration: BoxDecoration(color: colors.inputBackground, borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: sizeCalculator(size.width, 2.66), vertical: sizeCalculator(size.height, 1)),
                      child: const FittedBox(fit: BoxFit.fitWidth, child: Text("#openfashion")),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MainScreenJustForYouTitle extends StatelessWidget {
  const MainScreenJustForYouTitle({
    super.key,
    required this.size,
  });

  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 5.01),
      width: sizeCalculator(size.width, 48.53),
      child: const FittedBox(fit: BoxFit.fitWidth, child: Text("JUST FOR YOU")),
    );
  }
}

class MainScreenDcCollectionBanner extends StatelessWidget {
  const MainScreenDcCollectionBanner({
    super.key,
    required this.size,
  });

  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 22.08),
      width: size.width,
      child: Image.asset(
        "assets/banners/dc_collection.png",
        fit: BoxFit.cover,
      ),
    );
  }
}

class MainScreenOctoberCollectionBanner extends StatelessWidget {
  const MainScreenOctoberCollectionBanner({
    super.key,
    required this.size,
  });

  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 30.11),
      width: size.width,
      child: Image.asset(fit: BoxFit.cover, "assets/banners/october_collection.png"),
    );
  }
}

class MainScreenOpenFashionSection extends StatelessWidget {
  const MainScreenOpenFashionSection({
    super.key,
    required this.size,
    required this.colors,
  });

  final DeviceSize size;
  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(242, 242, 242, 1),
      height: sizeCalculator(size.height, 58.34),
      width: size.width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: sizeCalculator(size.height, 3.46), bottom: sizeCalculator(size.height, 2.08)),
            child: SizedBox(
              height: sizeCalculator(size.height, 5.01),
              width: sizeCalculator(size.width, 26.02),
              child: const FittedBox(fit: BoxFit.cover, child: AppLogos(logo: "Logo")),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: sizeCalculator(size.width, 11.99),
                right: sizeCalculator(size.width, 11.99),
                bottom: sizeCalculator(size.height, 0.61)),
            child: SizedBox(
              height: sizeCalculator(size.height, 8.23),
              width: sizeCalculator(size.width, 75.99),
              child: const AutoSizeText(
                  maxLines: 3,
                  presetFontSizes: [18, 17, 16, 15, 14, 13],
                  "Making a luxurious lifestyle accessible for a generous group of women is our daily drive."),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 1.70)),
            child: AppHeaderLine(size: size, colors: colors),
          ),
          SizedBox(
            height: sizeCalculator(size.height, 23.42),
            width: size.width,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 1.50)),
                        child: SizedBox(
                          height: sizeCalculator(size.height, 4.37),
                          width: sizeCalculator(size.width, 13.27),
                          child: const AppStickers(stickers: "miroodles"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: sizeCalculator(size.height, 2.25), left: sizeCalculator(size.width, 4.26)),
                        child: SizedBox(
                          height: sizeCalculator(size.height, 5.01),
                          width: sizeCalculator(size.width, 43.99),
                          child: const AutoSizeText(
                              maxLines: 2,
                              presetFontSizes: [18, 17, 16, 15, 14, 13],
                              "Fast shipping. Free on orders over \$25."),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 0.46)),
                        child: SizedBox(
                          height: sizeCalculator(size.height, 4.78),
                          width: sizeCalculator(size.width, 14.50),
                          child: const AppStickers(stickers: "cylinder"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: sizeCalculator(size.width, 4.26)),
                        child: SizedBox(
                          height: sizeCalculator(size.height, 5.01),
                          width: sizeCalculator(size.width, 43.99),
                          child: const AutoSizeText(
                              maxLines: 2,
                              presetFontSizes: [18, 17, 16, 15, 14, 13],
                              "Unique designs and high-quality materials."),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: sizeCalculator(size.height, 1.11), right: sizeCalculator(size.width, 3.99)),
                        child: SizedBox(
                          height: sizeCalculator(size.height, 4.61),
                          width: sizeCalculator(size.width, 13.99),
                          child: const AppStickers(stickers: "tree"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: sizeCalculator(size.height, 1.76),
                        ),
                        child: SizedBox(
                          height: sizeCalculator(size.height, 5.01),
                          width: sizeCalculator(size.width, 34.39),
                          child: const AutoSizeText(
                              maxLines: 2,
                              presetFontSizes: [18, 17, 16, 15, 14, 13],
                              "Sustainable process from start to finish."),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: sizeCalculator(size.height, 1.05), right: sizeCalculator(size.width, 5.33)),
                        child: SizedBox(
                          height: sizeCalculator(size.height, 4.78),
                          width: sizeCalculator(size.width, 14.50),
                          child: const AppStickers(stickers: "heart"),
                        ),
                      ),
                      SizedBox(
                        height: sizeCalculator(size.height, 5.01),
                        width: sizeCalculator(size.width, 41.33),
                        child: const AutoSizeText(
                            maxLines: 2,
                            presetFontSizes: [18, 17, 16, 15, 14, 13],
                            "Fast shipping. Free on orders over \$25."),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: sizeCalculator(size.height, 4.16)),
            child: SizedBox(
              height: sizeCalculator(size.height, 4.96),
              width: sizeCalculator(size.width, 17.73),
              child: const AppStickers(stickers: "symbol"),
            ),
          )
        ],
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
