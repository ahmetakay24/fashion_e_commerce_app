import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/screens/main_screen/model/main_screen_models.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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

class MainScreenBanner extends StatefulWidget {
  const MainScreenBanner({super.key, required this.colors, required this.size});
  final AppColors colors;
  final DeviceSize size;

  @override
  State<MainScreenBanner> createState() => _MainScreenBannerState();
}

class _MainScreenBannerState extends State<MainScreenBanner> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    var imageList = [
      "https://cdn.suitsupply.com/image/upload/b_rgb:efefef,bo_300px_solid_rgb:efefef,c_pad,w_2600/b_rgb:efefef,c_pad,dpr_1,w_1690,h_3042,f_auto,q_auto,fl_progressive/products/suits/default/Summer/P6816_52.jpg",
      "https://cdn.suitsupply.com/image/upload/b_rgb:efefef,bo_300px_solid_rgb:efefef,c_pad,w_2600/b_rgb:efefef,c_pad,dpr_1,w_1690,h_3042,f_auto,q_auto,fl_progressive/products/suits/default/Summer/P6829_1.jpg",
      "https://cdn.suitsupply.com/image/upload/b_rgb:efefef,bo_300px_solid_rgb:efefef,c_pad,w_2600/b_rgb:efefef,c_pad,dpr_1,w_1690,h_3042,f_auto,q_auto,fl_progressive/products/Shirts/default/Summer/H7110_1.jpg"
    ];
    return SizedBox(
      height: sizeCalculator(widget.size.height, 75.28),
      width: widget.size.width,
      child: Stack(
        children: [
          CarouselSlider.builder(
              itemCount: imageList.length,
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
                  autoPlayInterval: const Duration(seconds: 5))),
          Padding(
            padding: EdgeInsets.only(
                left: sizeCalculator(widget.size.width, 9.78), top: sizeCalculator(widget.size.height, 29.03)),
            child: SizedBox(
              height: sizeCalculator(widget.size.height, 15.30),
              width: sizeCalculator(widget.size.width, 84.26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "LUXURY",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(color: widget.colors.label),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "FASHION",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(color: widget.colors.label),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "& ACCESORIES",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(color: widget.colors.label),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: sizeCalculator(widget.size.height, 65.24),
                left: sizeCalculator(widget.size.width, 16.26),
                bottom: sizeCalculator(widget.size.height, 5.01)),
            child: SizedBox(
                height: sizeCalculator(widget.size.height, 5.01),
                width: sizeCalculator(widget.size.width, 67.46),
                child: ElevatedButton(
                    onPressed: null,
                    child: Text(
                      "EXPLORE COLLECTION",
                      style: Theme.of(context).textTheme.titleMedium,
                    ))),
          ),
          SizedBox(
              height: sizeCalculator(widget.size.height, 1.0),
              width: sizeCalculator(widget.size.width, 10.66),
              child: Padding(
                padding: EdgeInsets.only(
                    top: sizeCalculator(widget.size.height, 71.99), left: sizeCalculator(widget.size.width, 44.66)),
                child: AnimatedSmoothIndicator(
                  activeIndex: activeIndex,
                  count: imageList.length,
                  effect: SlideEffect(
                      dotHeight: sizeCalculator(widget.size.height, 1.0),
                      dotWidth: sizeCalculator(widget.size.width, 2.13),
                      activeDotColor: widget.colors.offWhite),
                ),
              ))
        ],
      ),
    );
  }
}

class MainScreenJustForYouProductsBuilder extends StatelessWidget {
  const MainScreenJustForYouProductsBuilder({
    super.key,
    required this.size,
    required this.clothes,
  });

  final DeviceSize size;
  final List<MainScreenClothesModel> clothes;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 57.46),
      width: size.width,
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
                  return Container(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.rotate(
                    angle: 0.785398,
                    child: Container(
                      width: sizeCalculator(size.height, 1),
                      height: sizeCalculator(size.width, 2.13),
                      decoration: BoxDecoration(
                        color: AppColors().secondary,
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 0.785398,
                    child: Container(
                      width: sizeCalculator(size.height, 1),
                      height: sizeCalculator(size.width, 2.13),
                      decoration: BoxDecoration(
                        color: AppColors().secondary,
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 0.785398,
                    child: Container(
                      width: sizeCalculator(size.height, 1),
                      height: sizeCalculator(size.width, 2.13),
                      decoration: BoxDecoration(
                        color: AppColors().secondary,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}