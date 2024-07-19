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
      title: const AppLogos(logo: "Logo"),
      leading: Padding(
        padding: EdgeInsets.only(left: sizeCalculator(size.width, 0.18)),
        child: IconButton(
            onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MenuView(),
                  ),
                ),
            icon: iconMenuBuilder(iconBlackOrWhite)),
      ),
      actions: [
        IconButton(
            onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SearchView(),
                  ),
                ),
            icon: iconSearchBuilder(iconBlackOrWhite)),
        Padding(
          padding: EdgeInsets.only(right: sizeCalculator(size.width, 1.20)),
          child: IconButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CartView(),
                  )),
              icon: iconShoppingBagBuilder(iconBlackOrWhite)),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBarTheme.of(context).toolbarHeight!);

  Widget iconSearchBuilder(Color color) {
    if (color == Colors.black) {
      return const AppIcons(icon: "Search");
    } else {
      return const AppIcons(
        icon: "search_white",
      );
    }
  }

  Widget iconMenuBuilder(Color color) {
    if (color == Colors.black) {
      return const AppIcons(icon: "Menu");
    } else {
      return const AppIcons(
        icon: "menu_white",
      );
    }
  }

  Widget iconShoppingBagBuilder(Color color) {
    if (color == Colors.black) {
      return const AppIcons(icon: "shopping_bag");
    } else {
      return const AppIcons(
        icon: "shopping_bag_white",
      );
    }
  }
}
