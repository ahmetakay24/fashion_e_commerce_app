import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_custom_widgets.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:fashion_e_commerce_app/screens/october_collection/view/widgets/sections/october_collection_sections.dart';
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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: sizeCalculator(size.height, 3.76), bottom: sizeCalculator(size.height, 4.34)),
            child: OctoberCollection1(size: size, colors: colors),
          ),
          OctoberCollection2(size: size, colors: colors),
          Padding(
            padding: EdgeInsets.symmetric(vertical: sizeCalculator(size.height, 4.34)),
            child: OctoberCollection3(size: size, colors: colors),
          ),
          AppFooter(size: size, colors: colors)
        ],
      ),
    );
  }
}

class OctoberCollection3 extends StatelessWidget {
  const OctoberCollection3({
    super.key,
    required this.size,
    required this.colors,
  });

  final DeviceSize size;
  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 62.10),
      width: size.width,
      child: Column(
        children: [
          SizedBox(
            height: sizeCalculator(size.height, 57.28),
            width: sizeCalculator(size.width, 91.46),
            child: const FittedBox(fit: BoxFit.cover, child: AppBanner(banner: "october_3_image")),
          ),
          Padding(
            padding: EdgeInsets.only(top: sizeCalculator(size.height, 1.06)),
            child: OctoberCollectionSectionSubtitle(
                paddingOfName: sizeCalculator(size.width, 18.63),
                widthOfName: sizeCalculator(size.width, 35.81),
                size: size,
                colors: colors,
                numberText: "03",
                collectionName: "HAE BY HAEKIM"),
          )
        ],
      ),
    );
  }
}

class OctoberCollection2 extends StatelessWidget {
  const OctoberCollection2({
    super.key,
    required this.size,
    required this.colors,
  });

  final DeviceSize size;
  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 62.10),
      width: size.width,
      child: Column(
        children: [
          SizedBox(
            height: sizeCalculator(size.height, 57.28),
            width: sizeCalculator(size.width, 91.46),
            child: const FittedBox(fit: BoxFit.cover, child: AppBanner(banner: "october_2_image")),
          ),
          Padding(
            padding: EdgeInsets.only(top: sizeCalculator(size.height, 1.06)),
            child: OctoberCollectionSectionSubtitle(
                paddingOfName: sizeCalculator(size.width, 9.30),
                widthOfName: sizeCalculator(size.width, 45.14),
                size: size,
                colors: colors,
                numberText: "02",
                collectionName: "BLACK COLLECTION"),
          )
        ],
      ),
    );
  }
}
