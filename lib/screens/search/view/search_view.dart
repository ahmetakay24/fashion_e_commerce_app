import 'package:auto_size_text/auto_size_text.dart';
import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    DeviceSize size = DeviceSize(context);
    AppColors colors = AppColors();
    return Scaffold(
      appBar: SearchAppBar(size: size),
      body: Padding(
        padding: EdgeInsets.only(left: sizeCalculator(size.height, 4.26)),
        child: Column(
          children: [
            SizedBox(
              height: sizeCalculator(size.height, 5.46875),
              width: sizeCalculator(size.width, 37.86),
              child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "Popular search terms",
                    style: TextStyle(color: colors.label),
                  )),
            ),
            SizedBox(
              width: sizeCalculator(size.width, 37.86),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AutoSizeText(
                    "Trend",
                    presetFontSizes: [18, 17, 16, 15, 14],
                  ),
                  SizedBox(
                    height: sizeCalculator(size.height, 1.17),
                  ),
                  const AutoSizeText(
                    "Dress",
                    presetFontSizes: [18, 17, 16, 15, 14],
                  ),
                  SizedBox(
                    height: sizeCalculator(size.height, 1.17),
                  ),
                  const AutoSizeText(
                    "Bag",
                    presetFontSizes: [18, 17, 16, 15, 14],
                  ),
                  SizedBox(
                    height: sizeCalculator(size.height, 1.17),
                  ),
                  const AutoSizeText(
                    "Tshirt",
                    presetFontSizes: [18, 17, 16, 15, 14],
                  ),
                  SizedBox(
                    height: sizeCalculator(size.height, 1.17),
                  ),
                  const AutoSizeText(
                    "Beauty",
                    presetFontSizes: [18, 17, 16, 15, 14],
                  ),
                  SizedBox(
                    height: sizeCalculator(size.height, 1.17),
                  ),
                  const AutoSizeText(
                    "Accessories",
                    presetFontSizes: [18, 17, 16, 15, 14],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({
    super.key,
    required this.size,
  });

  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: sizeCalculator(size.height, 9.03125),
      title: SizedBox(
        height: sizeCalculator(size.height, 9.03125),
        width: sizeCalculator(size.width, 91.46),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                    height: sizeCalculator(size.height, 5.46875),
                    width: sizeCalculator(size.width, 91.46),
                    child: Row(
                      children: [
                        SizedBox(
                            height: sizeCalculator(size.height, 3.75),
                            width: sizeCalculator(size.width, 6.39),
                            child: const FittedBox(fit: BoxFit.cover, child: AppIcons(icon: "Search"))),
                        Padding(
                          padding: EdgeInsets.only(left: sizeCalculator(size.width, 3.17)),
                          child: SizedBox(
                            height: sizeCalculator(size.height, 5.46875),
                            width: sizeCalculator(size.width, 72.31),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search items",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: sizeCalculator(size.height, 3.75),
                            width: sizeCalculator(size.width, 6.39),
                            child: InkWell(
                                onTap: () => Navigator.pop(context),
                                child: const FittedBox(fit: BoxFit.cover, child: AppIcons(icon: "close")))),
                      ],
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: sizeCalculator(size.height, 0.90625)),
              child: Container(
                height: sizeCalculator(size.height, 0.15625),
                width: size.width,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(sizeCalculator(size.height, 9.03125));
}
