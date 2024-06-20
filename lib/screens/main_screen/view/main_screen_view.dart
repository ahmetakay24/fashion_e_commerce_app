import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();
    DeviceSize size = DeviceSize(context);
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
              child: SizedBox(
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
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: sizeCalculator(size.height, 1.71),
                  left: sizeCalculator(size.width, 33.19),
                  right: sizeCalculator(size.width, 33.19)),
              child: SizedBox(
                height: sizeCalculator(size.height, 1.16),
                width: sizeCalculator(size.width, 33.33),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: colors.placeholder,
                        thickness: 2,
                      ),
                    ),
                    Transform.rotate(
                      angle: 0.785398,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration:
                            BoxDecoration(color: Colors.transparent, border: Border.all(color: colors.placeholder)),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: colors.placeholder,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: sizeCalculator(size.height, 4.51),
              width: size.width,
              child: Row(
                //All,Apparel... Buttons will added
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
