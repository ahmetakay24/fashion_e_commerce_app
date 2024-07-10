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
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: sizeCalculator(size.width, 4.26)),
        child: Column(
          children: [
            SizedBox(
              height: sizeCalculator(size.height, 5.46875),
              width: sizeCalculator(size.width, 13.33),
              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Cart")),
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
                const SizedBox(
                  height: 30,
                  width: 30,
                  child: FittedBox(
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

/*
InkWell(
        onTap: null,
        child: Container(
          height: sizeCalculator(size.height, 8.75),
          width: size.width,
          color: colors.titleActive,
          child: Row(
            children: [
              SizedBox(
                height: sizeCalculator(size.height, 5.33),
                width: sizeCalculator(size.width, 3.125),
                child: const FittedBox(fit: BoxFit.cover, child: AppIcons(icon: "shopping_bag")),
              ),
              SizedBox(
                height: sizeCalculator(size.height, 4.0625),
                width: sizeCalculator(size.width, 50.66),
                child: const FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "CONTINUE SHOPPING",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      )
 */

/*
AppBar(
        automaticallyImplyLeading: false,
        leading: SizedBox(
          height: sizeCalculator(size.height, 2.109375),
          width: sizeCalculator(size.width, 3.59),
          child: const IconButton(
            onPressed: null,
            icon: FittedBox(fit: BoxFit.fitWidth, child: AppIcons(icon: "close")),
          ),
        ),
      )
 */