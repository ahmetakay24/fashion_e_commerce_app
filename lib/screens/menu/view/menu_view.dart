import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_custom_widgets.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:fashion_e_commerce_app/screens/menu/view/widgets/buttons/menu_buttons.dart';
import 'package:fashion_e_commerce_app/screens/menu/view/widgets/category_titles/menu_category_titles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    DeviceSize size = DeviceSize(context);
    AppColors colors = AppColors();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Padding(
          padding: EdgeInsets.only(left: sizeCalculator(size.width, 1.01)),
          child: MenuClosePageButton(size: size),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: sizeCalculator(size.width, 5.06),
                  right: sizeCalculator(size.width, 5.06),
                  bottom: sizeCalculator(size.height, 2.453125)),
              child: MenuCategoryButtons(size: size, colors: colors),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 4.171875)),
              child: MenuWomenCategoryTitles(
                size: size,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: sizeCalculator(size.width, 8.90), bottom: sizeCalculator(size.height, 3)),
              child: MenuPhoneNumberButton(size: size),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: sizeCalculator(size.width, 8.90), bottom: sizeCalculator(size.height, 4.296875)),
              child: MenuLocationButton(size: size),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 3.734375)),
              child: AppHeaderLine(size: size, colors: colors),
            ),
            MenuFooter(size: size)
          ],
        ),
      ),
    );
  }
}

class MenuFooter extends StatelessWidget {
  const MenuFooter({
    super.key,
    required this.size,
  });

  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 3.75),
      width: sizeCalculator(size.width, 37.86),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: sizeCalculator(size.height, 3.75),
            width: sizeCalculator(size.width, 6.39),
            child: const AppIcons(icon: "x"),
          ),
          SizedBox(
            height: sizeCalculator(size.height, 3.75),
            width: sizeCalculator(size.width, 6.39),
            child: const AppIcons(icon: "instagram_vector"),
          ),
          SizedBox(
            height: sizeCalculator(size.height, 3.75),
            width: sizeCalculator(size.width, 6.39),
            child: const AppIcons(icon: "youtube"),
          ),
        ],
      ),
    );
  }
}

class MenuLocationButton extends StatelessWidget {
  const MenuLocationButton({
    super.key,
    required this.size,
  });

  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    const url =
        "https://www.google.com/maps/place/Louis+Vuitton+Miami+Design+District/@25.8126067,-80.1924513,17z/data=!3m1!4b1!4m6!3m5!1s0x88d9b157305f7a1d:0x9969496b99f01df2!8m2!3d25.8126067!4d-80.1924513!16s%2Fg%2F11gzb8pc5?hl=tr&entry=ttu";

    return InkWell(
      onTap: () async {
        if (await canLaunchUrlString(url)) {
          await launchUrlString(url);
        }
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: sizeCalculator(size.height, 5.46875),
          width: sizeCalculator(size.width, 37.59),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: sizeCalculator(size.height, 3.75),
                width: sizeCalculator(size.width, 6.39),
                child: const AppIcons(icon: "Location"),
              ),
              Padding(
                padding: EdgeInsets.only(left: sizeCalculator(size.width, 4.26)),
                child: SizedBox(
                  height: sizeCalculator(size.height, 5.46875),
                  width: sizeCalculator(size.width, 26.93),
                  child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Store Locator")),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MenuPhoneNumberButton extends StatelessWidget {
  const MenuPhoneNumberButton({
    super.key,
    required this.size,
  });

  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    const phoneNumber = "+17867138616";
    const url = "tel:$phoneNumber";

    return InkWell(
      onTap: () async {
        if (await canLaunchUrlString(url)) {
          await launchUrlString(url);
        }
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: sizeCalculator(size.height, 5.46875),
          width: sizeCalculator(size.width, 42.93),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: sizeCalculator(size.height, 3.75),
                width: sizeCalculator(size.width, 6.39),
                child: const AppIcons(icon: "Call"),
              ),
              Padding(
                padding: EdgeInsets.only(left: sizeCalculator(size.width, 4.26)),
                child: SizedBox(
                  height: sizeCalculator(size.height, 5.46875),
                  width: sizeCalculator(size.width, 32.26),
                  child: const FittedBox(fit: BoxFit.fitWidth, child: Text("(786) 713-8616")),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MenuClosePageButton extends StatelessWidget {
  const MenuClosePageButton({
    super.key,
    required this.size,
  });

  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: SizedBox(
        height: sizeCalculator(size.height, 2.109375),
        width: sizeCalculator(size.width, 3.59),
        child: const FittedBox(fit: BoxFit.cover, child: AppIcons(icon: "close")),
      ),
    );
  }
}
