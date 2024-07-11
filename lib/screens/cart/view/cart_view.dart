import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

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
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: SizedBox(
              height: sizeCalculator(size.height, 2.109375),
              width: sizeCalculator(size.width, 3.59),
              child: const FittedBox(fit: BoxFit.cover, child: AppIcons(icon: "close")),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: sizeCalculator(size.width, 4.26)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: sizeCalculator(size.height, 5.46875),
              width: sizeCalculator(size.width, 13.33),
              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Cart")),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: sizeCalculator(size.height, 30)),
                child: SizedBox(
                  height: sizeCalculator(size.height, 3.125),
                  width: sizeCalculator(size.width, 84.79),
                  child: const FittedBox(fit: BoxFit.fitWidth, child: Text("You have no items in your Shopping Bag.")),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: null,
        child: Container(
          height: sizeCalculator(size.height, 8.75),
          width: size.width,
          color: colors.titleActive,
          child: Padding(
            padding: EdgeInsets.only(left: sizeCalculator(size.width, 18.79)),
            child: Row(
              children: [
                SizedBox(
                  height: sizeCalculator(size.height, 2.93),
                  width: sizeCalculator(size.width, 6.36),
                  child: const FittedBox(
                      fit: BoxFit.cover,
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: sizeCalculator(size.width, 6.39)),
                  child: SizedBox(
                    height: sizeCalculator(size.height, 4.0625),
                    width: sizeCalculator(size.width, 50.66),
                    child: const FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "CONTINUE SHOPPING",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
