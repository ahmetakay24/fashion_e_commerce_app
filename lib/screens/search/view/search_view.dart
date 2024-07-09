import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    DeviceSize size = DeviceSize(context);

    return Scaffold(
      appBar: AppBar(
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
                              child: const FittedBox(fit: BoxFit.cover, child: AppIcons(icon: "close"))),
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
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
