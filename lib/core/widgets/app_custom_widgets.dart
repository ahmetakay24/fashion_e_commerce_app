import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:fashion_e_commerce_app/screens/cart/view/cart_view.dart';
import 'package:fashion_e_commerce_app/screens/menu/view/menu_view.dart';
import 'package:fashion_e_commerce_app/screens/search/view/search_view.dart';
import 'package:flutter/material.dart';

class AppHeaderLine extends StatelessWidget {
  const AppHeaderLine({super.key, required this.size, required this.colors});
  final DeviceSize size;
  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              decoration: BoxDecoration(color: Colors.transparent, border: Border.all(color: colors.placeholder)),
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
    );
  }
}

class OpenFashionAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OpenFashionAppBar({
    super.key,
    required this.context,
    required this.colors,
    required this.size,
    required this.appBarColors,
    required this.iconBlackOrWhite,
  });

  final BuildContext context;
  final AppColors colors;
  final DeviceSize size;
  final Color appBarColors;
  final Color iconBlackOrWhite;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColors,
      centerTitle: true,
      title: _logoBuilder("Logo", "logo_white"),
      leading: Padding(
        padding: EdgeInsets.only(left: sizeCalculator(size.width, 0.18)),
        child: IconButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const MenuView(),
            ),
          ),
          icon: _iconBuilder("Menu", "menu_white"),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SearchView(),
            ),
          ),
          icon: _iconBuilder("Search", "search_white"),
        ),
        Padding(
          padding: EdgeInsets.only(right: sizeCalculator(size.width, 1.20)),
          child: IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CartView(),
              ),
            ),
            icon: _iconBuilder("shopping_bag", "shopping_bag_white"),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBarTheme.of(context).toolbarHeight!);

  Widget _iconBuilder(String blackIcon, String whiteIcon) {
    return AppIcons(icon: iconBlackOrWhite == Colors.black ? blackIcon : whiteIcon);
  }

  Widget _logoBuilder(String blackIcon, String whiteIcon) {
    return AppLogos(logo: iconBlackOrWhite == Colors.black ? blackIcon : whiteIcon);
  }
}

class AppFooter extends StatelessWidget {
  const AppFooter({
    super.key,
    required this.size,
    required this.colors,
  });

  final DeviceSize size;
  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: sizeCalculator(size.height, 45),
      width: size.width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: sizeCalculator(size.height, 3.01)),
            child: SizedBox(
                height: sizeCalculator(size.height, 3.01),
                width: sizeCalculator(size.width, 43.19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: sizeCalculator(size.height, 3.01),
                        width: sizeCalculator(size.width, 6.39),
                        child: const AppIcons(icon: "x")),
                    SizedBox(
                        height: sizeCalculator(size.height, 3.01),
                        width: sizeCalculator(size.width, 6.39),
                        child: const AppIcons(icon: "instagram_vector")),
                    SizedBox(
                        height: sizeCalculator(size.height, 3.01),
                        width: sizeCalculator(size.width, 6.39),
                        child: const AppIcons(icon: "youtube")),
                  ],
                )),
          ),
          Padding(
              padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 2.34)),
              child: AppHeaderLine(size: size, colors: colors)),
          SizedBox(
            height: sizeCalculator(size.height, 13.40),
            width: sizeCalculator(size.width, 49.06),
            child: const Column(
              children: [
                Expanded(child: FittedBox(fit: BoxFit.fitWidth, child: Text("support@openui.design"))),
                Expanded(
                    child: Row(
                  children: [
                    Spacer(),
                    Expanded(
                      flex: 4,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text("+60 825 876"),
                      ),
                    ),
                    Spacer()
                  ],
                )),
                Expanded(child: FittedBox(fit: BoxFit.fitWidth, child: Text("08:00 - 22:00 - Everyday")))
              ],
            ),
          ),
          Padding(
              padding:
                  EdgeInsets.only(top: sizeCalculator(size.height, 2.34), bottom: sizeCalculator(size.height, 4.01)),
              child: AppHeaderLine(size: size, colors: colors)),
          Padding(
            padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 2.88)),
            child: SizedBox(
              height: sizeCalculator(size.height, 3.01),
              width: sizeCalculator(size.width, 65.86),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: sizeCalculator(size.height, 3.01),
                    width: sizeCalculator(size.width, 12.53),
                    child: const FittedBox(fit: BoxFit.fitWidth, child: Text("About")),
                  ),
                  SizedBox(
                    height: sizeCalculator(size.height, 3.01),
                    width: sizeCalculator(size.width, 16.26),
                    child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Contact")),
                  ),
                  SizedBox(
                    height: sizeCalculator(size.height, 3.01),
                    width: sizeCalculator(size.width, 9.33),
                    child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Blog")),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: sizeCalculator(size.height, 5.67),
            width: size.width,
            color: colors.inputBackground,
            child: Padding(
              padding: EdgeInsets.only(
                  left: sizeCalculator(size.width, 18.26),
                  right: sizeCalculator(size.width, 18.26),
                  top: sizeCalculator(size.height, 1.39),
                  bottom: sizeCalculator(size.height, 1.90)),
              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Copyright© OpenUI All Rights Reserved.")),
            ),
          )
        ],
      ),
    );
  }
}
