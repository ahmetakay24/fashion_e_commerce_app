import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({super.key});

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {
  @override
  Widget build(BuildContext context) {
    int activeIndex = 0;
    var imageList = [
      "https://cdn.suitsupply.com/image/upload/b_rgb:efefef,bo_300px_solid_rgb:efefef,c_pad,w_2600/b_rgb:efefef,c_pad,dpr_1,w_1690,h_3042,f_auto,q_auto,fl_progressive/products/suits/default/Summer/P6816_52.jpg",
      "https://cdn.suitsupply.com/image/upload/b_rgb:efefef,bo_300px_solid_rgb:efefef,c_pad,w_2600/b_rgb:efefef,c_pad,dpr_1,w_1690,h_3042,f_auto,q_auto,fl_progressive/products/suits/default/Summer/P6829_1.jpg",
      "https://cdn.suitsupply.com/image/upload/b_rgb:efefef,bo_300px_solid_rgb:efefef,c_pad,w_2600/b_rgb:efefef,c_pad,dpr_1,w_1690,h_3042,f_auto,q_auto,fl_progressive/products/Shirts/default/Summer/H7110_1.jpg"
    ];

    AppColors colors = AppColors();
    DeviceSize size = DeviceSize(context);
    return Scaffold(
      appBar: MainScreenAppBar(
        context: context,
        colors: colors,
        size: size,
      ),
      body: Column(
        children: [
          SizedBox(
            height: sizeCalculator(size.height, 75.28),
            width: size.width,
            child: Stack(
              children: [
                CarouselSlider.builder(
                    itemCount: imageList.length,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        height: sizeCalculator(size.height, 75.28),
                        width: size.width,
                        color: colors.appBarColor,
                        child: CachedNetworkImage(
                          imageUrl: imageList[index],
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                    options: CarouselOptions(
                        height: sizeCalculator(size.height, 75.28),
                        //If I make photos full cover
                        //viewportFraction: 1,
                        onPageChanged: (index, reason) => setState(() {
                              activeIndex = index;
                            }),
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3))),
                Padding(
                  padding: EdgeInsets.only(
                      top: sizeCalculator(size.height, 65.24),
                      left: sizeCalculator(size.width, 16.26),
                      bottom: sizeCalculator(size.height, 5.01)),
                  child: SizedBox(
                      height: sizeCalculator(size.height, 5.01),
                      width: sizeCalculator(size.width, 67.46),
                      child: ElevatedButton(
                          onPressed: null,
                          child: Text(
                            "EXPLORE COLLECTION",
                            style: Theme.of(context).textTheme.titleMedium,
                          ))),
                ),
                SizedBox(
                    height: sizeCalculator(size.height, 1.0),
                    width: sizeCalculator(size.width, 10.66),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: sizeCalculator(size.height, 71.99), left: sizeCalculator(size.width, 44.66)),
                      child: AnimatedSmoothIndicator(
                        activeIndex: activeIndex,
                        count: imageList.length,
                        effect: SlideEffect(
                          dotHeight: sizeCalculator(size.height, 1.0),
                          dotWidth: sizeCalculator(size.width, 2.13),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
