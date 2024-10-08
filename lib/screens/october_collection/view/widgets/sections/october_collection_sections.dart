import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:fashion_e_commerce_app/resources/texts/october_collection/october_collection_images.dart';
import 'package:fashion_e_commerce_app/resources/texts/october_collection/october_collection_texts.dart';
import 'package:flutter/material.dart';

class OctoberCollection1 extends StatelessWidget {
  const OctoberCollection1({
    super.key,
    required this.size,
    required this.colors,
    required this.textsEnglish,
    required this.octoberCollectionImages,
  });

  final DeviceSize size;
  final AppColors colors;
  final OctoberCollectionTextsEnglish textsEnglish;
  final OctoberCollectionImages octoberCollectionImages;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 74.27),
      width: size.width,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            height: sizeCalculator(size.height, 15.72),
            width: sizeCalculator(size.width, 43.46),
            child: AppStickers(stickers: octoberCollectionImages.numberImageOfTitle),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: sizeCalculator(size.height, 1.99),
                left: sizeCalculator(size.width, 30.10),
                right: sizeCalculator(size.width, 26.42)),
            child: SizedBox(
              height: sizeCalculator(size.height, 6.6),
              width: sizeCalculator(size.width, 43.54),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: AppStickers(
                  stickers: octoberCollectionImages.nameImageOfTitle,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: sizeCalculator(size.height, 7.94),
                left: sizeCalculator(size.width, 31.89),
                right: sizeCalculator(size.width, 29.27)),
            child: SizedBox(
              height: sizeCalculator(size.height, 3.65),
              width: sizeCalculator(size.width, 38.82),
              child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    textsEnglish.collectionWithUpperCase,
                    style: const TextStyle(color: Colors.white),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: sizeCalculator(size.height, 12.30)),
            child: SizedBox(
              height: sizeCalculator(size.height, 57.28),
              width: sizeCalculator(size.width, 91.46),
              child: FittedBox(
                fit: BoxFit.cover,
                child: AppBanner(
                  banner: octoberCollectionImages.imageOfCollection1,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: sizeCalculator(size.height, 70.61)),
            child: OctoberCollectionSectionSubtitle(
              paddingOfName: sizeCalculator(size.width, 2.63),
              widthOfName: sizeCalculator(size.width, 51.81),
              size: size,
              colors: colors,
              numberText: textsEnglish.numberOfCollection1,
              collectionName: textsEnglish.nameOfCollection1WithUpperCase,
            ),
          ),
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
    required this.textsEnglish,
    required this.octoberCollectionImages,
  });

  final DeviceSize size;
  final AppColors colors;
  final OctoberCollectionTextsEnglish textsEnglish;
  final OctoberCollectionImages octoberCollectionImages;

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
            child: FittedBox(fit: BoxFit.cover, child: AppBanner(banner: octoberCollectionImages.imageOfCollection2)),
          ),
          Padding(
            padding: EdgeInsets.only(top: sizeCalculator(size.height, 1.06)),
            child: OctoberCollectionSectionSubtitle(
                paddingOfName: sizeCalculator(size.width, 9.30),
                widthOfName: sizeCalculator(size.width, 45.14),
                size: size,
                colors: colors,
                numberText: textsEnglish.numberOfCollection2,
                collectionName: textsEnglish.nameOfCollection2WithUpperCase),
          )
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
    required this.textsEnglish,
    required this.octoberCollectionImages,
  });

  final DeviceSize size;
  final AppColors colors;
  final OctoberCollectionTextsEnglish textsEnglish;
  final OctoberCollectionImages octoberCollectionImages;

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
            child: FittedBox(fit: BoxFit.cover, child: AppBanner(banner: octoberCollectionImages.imageOfCollection3)),
          ),
          Padding(
            padding: EdgeInsets.only(top: sizeCalculator(size.height, 1.06)),
            child: OctoberCollectionSectionSubtitle(
                paddingOfName: sizeCalculator(size.width, 18.63),
                widthOfName: sizeCalculator(size.width, 35.81),
                size: size,
                colors: colors,
                numberText: textsEnglish.numberOfCollection3,
                collectionName: textsEnglish.nameOfCollection3WithUpperCase),
          )
        ],
      ),
    );
  }
}

class OctoberCollectionSectionSubtitle extends StatelessWidget {
  const OctoberCollectionSectionSubtitle({
    super.key,
    required this.size,
    required this.colors,
    required this.numberText,
    required this.collectionName,
    required this.paddingOfName,
    required this.widthOfName,
  });

  final DeviceSize size;
  final AppColors colors;

  final String numberText;
  final String collectionName;

  final double paddingOfName;
  final double widthOfName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 3.76),
      width: sizeCalculator(size.width, 91.46),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: sizeCalculator(size.width, 2.85)),
            child: SizedBox(
              height: sizeCalculator(size.height, 3.76),
              width: sizeCalculator(size.width, 5.06),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  numberText,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: paddingOfName),
            child: SizedBox(
              width: sizeCalculator(size.width, 29.11),
              child: Divider(
                height: sizeCalculator(size.height, 0.12),
                color: colors.body,
              ),
            ),
          ),
          SizedBox(
            height: sizeCalculator(size.height, 3.76),
            width: widthOfName,
            child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  collectionName,
                  style: const TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
