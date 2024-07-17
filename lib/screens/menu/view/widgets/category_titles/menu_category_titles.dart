import 'package:auto_size_text/auto_size_text.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:flutter/material.dart';

class MenuWomenCategoryTitles extends StatelessWidget {
  const MenuWomenCategoryTitles({super.key, required this.size});

  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCategoryExpansionTile(
          context,
          title: "New",
          subcategories: ["New Arrivals", "Trending Now", "Limited Edition", "Editor's Picks"],
        ),
        _buildCategoryExpansionTile(
          context,
          title: "Apparel",
          subcategories: ["Tops", "Bottoms", "Dresses", "Outerwear", "Activewear"],
        ),
        _buildCategoryExpansionTile(
          context,
          title: "Bag",
          subcategories: ["Handbags", "Backpacks", "Crossbody Bags", "Totes", "Wallets", "Clutches"],
        ),
        _buildCategoryExpansionTile(
          context,
          title: "Shoes",
          subcategories: ["Sneakers", "Heels", "Flats", "Boots", "Sandals", "Loafers"],
        ),
        _buildCategoryExpansionTile(
          context,
          title: "Beauty",
          subcategories: ["Skincare", "Makeup", "Hair Care", "Fragrances", "Tools & Accessories"],
        ),
        _buildCategoryExpansionTile(
          context,
          title: "Accessories",
          subcategories: ["Jewelry", "Watches", "Sunglasses", "Hats", "Scarves", "Belts"],
        ),
      ],
    );
  }

  Widget _buildCategoryExpansionTile(BuildContext context,
      {required String title, required List<String> subcategories}) {
    return SizedBox(
      width: sizeCalculator(size.width, 89.86),
      child: ExpansionTile(
        title: AutoSizeText(
          title,
          presetFontSizes: const [20, 19, 18, 17, 16],
        ),
        children: subcategories.map((subcategory) {
          return SizedBox(
            width: sizeCalculator(size.width, 80.79),
            child: InkWell(
              child: ListTile(
                title: AutoSizeText(
                  subcategory,
                  presetFontSizes: const [18, 17, 16, 15, 14],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
