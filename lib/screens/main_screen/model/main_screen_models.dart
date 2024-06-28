import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainScreenClothesModel {
  final String name;
  final String price;
  final String imageUrl;

  MainScreenClothesModel({
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

class Deneme extends StatefulWidget {
  const Deneme({super.key});

  @override
  State<Deneme> createState() => _DenemeState();
}

class _DenemeState extends State<Deneme> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
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
    DeviceSize size = DeviceSize(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: sizeCalculator(size.height, 57.46),
          width: size.width,
          color: Colors.red,
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
                      return GestureDetector(
                        onTapUp: (_) {
                          setState(() {
                            activeIndex = index;
                          });
                        },
                        child: Container(
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
                  child: AnimatedSmoothIndicator(
                    activeIndex: activeIndex,
                    count: 3,
                    effect: SlideEffect(
                      dotHeight: sizeCalculator(size.height, 1.0),
                      dotWidth: sizeCalculator(size.width, 2.13),
                      activeDotColor: AppColors().offWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
