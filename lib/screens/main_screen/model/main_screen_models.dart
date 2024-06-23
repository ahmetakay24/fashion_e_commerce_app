import 'package:cached_network_image/cached_network_image.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:flutter/material.dart';

class MainScreenClothesModel {
  final String name;
  final String price;
  final String imageUrl;

  MainScreenClothesModel({
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

class Deneme extends StatelessWidget {
  const Deneme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: sizeCalculator(DeviceSize(context).height, 25.09),
              width: sizeCalculator(DeviceSize(context).width, 43.99),
              child: Column(
                children: [
                  SizedBox(
                    height: sizeCalculator(DeviceSize(context).height, 17.54),
                    width: sizeCalculator(DeviceSize(context).width, 43.99),
                    child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl:
                            "https://assets.burberry.com/is/image/Burberryltd/C0EB0D1E-9CF7-462B-AE9E-1A862BDF0FA5?\$BBY_V3_ML_1\$&wid=2500&hei=2500"),
                  ),
                  SizedBox(
                    height: sizeCalculator(DeviceSize(context).height, 4.01),
                    width: sizeCalculator(DeviceSize(context).width, 40.29),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "Burberry Wool Silk Tailored",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: sizeCalculator(DeviceSize(context).width, 3.01),
                    width: sizeCalculator(DeviceSize(context).width, 8.53),
                    child: const FittedBox(fit: BoxFit.fitWidth, child: Text("\$ 1700")),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
