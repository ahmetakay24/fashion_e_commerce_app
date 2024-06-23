import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:fashion_e_commerce_app/screens/main_screen/model/main_screen_models.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();
    DeviceSize size = DeviceSize(context);
    MainScreenEnglishTexts englishTexts = MainScreenEnglishTexts();

    List<MainScreenClothesModel> clothes = [
      MainScreenClothesModel(
        name: "Burberry Wool Silk Tailored",
        price: "\$ 1700",
        imageUrl:
            "https://assets.burberry.com/is/image/Burberryltd/C0EB0D1E-9CF7-462B-AE9E-1A862BDF0FA5?\$BBY_V3_ML_1\$&wid=2500&hei=2500",
      ),
      MainScreenClothesModel(
        name: "Burberry Check Jacquard Weekend Bag",
        price: "\$ 1750",
        imageUrl:
            "https://assets.burberry.com/is/image/Burberryltd/969CBFE0-9823-4E36-B4B2-E4D78D046157?\$BBY_V3_SL_1\$&wid=2500&hei=2500",
      ),
      MainScreenClothesModel(
        name: "Burberry Striped Cotton T-shirt",
        price: "\$ 650",
        imageUrl:
            "https://assets.burberry.com/is/image/Burberryltd/626E7CDC-D03B-4FB4-AD9A-8C48C23711C5?\$BBY_V3_SL_1\$&wid=2500&hei=2500",
      ),
      MainScreenClothesModel(
        name: "Burberry Wool Pants",
        price: "\$ 1450",
        imageUrl:
            "https://assets.burberry.com/is/image/Burberryltd/24914A97-AF84-4094-8BB4-782BA3BEE40F?\$BBY_V3_SL_1\$&wid=2500&hei=2500",
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
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: sizeCalculator(size.height, 1.12),
                        left: sizeCalculator(size.width, 11.33),
                        right: sizeCalculator(size.width, 11.33)),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height: sizeCalculator(size.height, 1.88),
                                width: sizeCalculator(size.width, 5.59),
                                child: FittedBox(
                                    fit: BoxFit.fitWidth, child: InkWell(onTap: null, child: Text(englishTexts.all)))),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: sizeCalculator(size.width, 6.93)),
                          child: SizedBox(
                              height: sizeCalculator(size.height, 1.88),
                              width: sizeCalculator(size.width, 11.19),
                              child: FittedBox(
                                  fit: BoxFit.fitWidth, child: InkWell(onTap: null, child: Text(englishTexts.pants)))),
                        ),
                        SizedBox(
                            height: sizeCalculator(size.height, 1.88),
                            width: sizeCalculator(size.width, 11.19),
                            child: FittedBox(
                                fit: BoxFit.fitWidth, child: InkWell(onTap: null, child: Text(englishTexts.suits)))),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: sizeCalculator(size.width, 6.93)),
                          child: SizedBox(
                              height: sizeCalculator(size.height, 1.88),
                              width: sizeCalculator(size.width, 11.19),
                              child: FittedBox(
                                  fit: BoxFit.fitWidth, child: InkWell(onTap: null, child: Text(englishTexts.tshirt)))),
                        ),
                        SizedBox(
                            height: sizeCalculator(size.height, 1.88),
                            width: sizeCalculator(size.width, 7.46),
                            child: FittedBox(
                                fit: BoxFit.fitWidth, child: InkWell(onTap: null, child: Text(englishTexts.bag)))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizeCalculator(size.height, 1.5),
                    width: sizeCalculator(size.width, 77.33),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Transform.rotate(
                            angle: 0.785398,
                            child: Container(
                              width: 5.7,
                              height: 5.7,
                              decoration: BoxDecoration(
                                color: colors.secondary,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55),
                          child: Transform.rotate(
                            angle: 0.785398,
                            child: Container(
                              width: 5.7,
                              height: 5.7,
                              decoration: BoxDecoration(
                                color: colors.secondary,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 65),
                          child: Transform.rotate(
                            angle: 0.785398,
                            child: Container(
                              width: 5.7,
                              height: 5.7,
                              decoration: BoxDecoration(
                                color: colors.secondary,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 65.5),
                          child: Transform.rotate(
                            angle: 0.785398,
                            child: Container(
                              width: 5.7,
                              height: 5.7,
                              decoration: BoxDecoration(
                                color: colors.secondary,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 57),
                          child: Transform.rotate(
                            angle: 0.785398,
                            child: Container(
                              width: 5.7,
                              height: 5.7,
                              decoration: BoxDecoration(
                                color: colors.secondary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: sizeCalculator(size.height, 1.63),
                bottom: sizeCalculator(size.height, 1.48),
                left: sizeCalculator(size.width, 2.0),
                right: sizeCalculator(size.width, 2.0),
              ),
              child: SizedBox(
                height: sizeCalculator(size.height, 51.44),
                width: size.width,
                child: GridView.builder(
                  itemCount: clothes.length >= 4 ? 4 : clothes.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: sizeCalculator(size.height, 1.5),
                    crossAxisSpacing: sizeCalculator(size.width, 3.19),
                    childAspectRatio: (size.width / 2) / sizeCalculator(size.height, 25.09),
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: sizeCalculator(DeviceSize(context).height, 17.54),
                          width: sizeCalculator(DeviceSize(context).width, 43.99),
                          child: CachedNetworkImage(fit: BoxFit.contain, imageUrl: clothes[index].imageUrl),
                        ),
                        SizedBox(
                          height: sizeCalculator(DeviceSize(context).height, 4.01),
                          width: sizeCalculator(DeviceSize(context).width, 40.29),
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
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
                    );
                  },
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

/*left: sizeCalculator(size.width, 4.26),
                right: sizeCalculator(size.width, 4.26),
                top: sizeCalculator(size.height, 1.63),
                bottom: sizeCalculator(size.height, 1.48), */

class MainScreenEnglishTexts {
  final String all = "All";
  final String pants = "Pants";
  final String suits = "Suits";
  final String tshirt = "Tshirt";
  final String bag = "Bag";
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
