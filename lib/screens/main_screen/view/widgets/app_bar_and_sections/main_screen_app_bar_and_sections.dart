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
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
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
    return Stack(
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
    );
  }
}