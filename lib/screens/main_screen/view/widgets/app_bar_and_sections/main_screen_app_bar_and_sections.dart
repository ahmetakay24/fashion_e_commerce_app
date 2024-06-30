import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:flutter/material.dart';

//AppBar

class MainScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainScreenAppBar({
    super.key,
    required this.context,
    required this.colors,
    required this.size,
  });
  final BuildContext context;
  final AppColors colors;
  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: colors.appBarColor,
      centerTitle: true,
      title: const AppLogos(logo: "Logo"),
      leading: Padding(
        padding: EdgeInsets.only(left: sizeCalculator(size.width, 0.18)),
        child: const IconButton(onPressed: null, icon: AppIcons(icon: "Menu")),
      ),
      actions: [
        const IconButton(onPressed: null, icon: AppIcons(icon: "Search")),
        Padding(
          padding: EdgeInsets.only(right: sizeCalculator(size.width, 1.20)),
          child: const IconButton(onPressed: null, icon: AppIcons(icon: "shopping_bag")),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBarTheme.of(context).toolbarHeight!);
}

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
