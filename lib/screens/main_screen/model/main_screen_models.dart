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
    List<MainScreenClothesModel> clothes = [
      MainScreenClothesModel(
        name: "WOOL AND SILK MARTINI-FIT TUXEDO SUIT",
        price: "\$ 4,195",
        imageUrl: "assets/clothes/dc_suit.png",
      ),
      MainScreenClothesModel(
        name: "PRINTED JACQUARD HOLDALL",
        price: "\$ 2,495",
        imageUrl: "assets/clothes/dc_bag.png",
      ),
      MainScreenClothesModel(
        name: "COTTON T-SHIRT WITH LOGO EMBROIDERY",
        price: "\$ 595",
        imageUrl: "assets/clothes/dc_tshirt.png",
      ),
      MainScreenClothesModel(
        name: "STRETCH COTTON PANTS WITH BRANDED TAG",
        price: "\$ 825",
        imageUrl: "assets/clothes/dc_pant.png",
      ),
    ];
    DeviceSize size = DeviceSize(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
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
                    return SizedBox(
                      height: sizeCalculator(DeviceSize(context).height, 25.09),
                      width: sizeCalculator(DeviceSize(context).width, 43.99),
                      child: Column(
                        children: [
                          SizedBox(
                            height: sizeCalculator(DeviceSize(context).height, 17.54),
                            width: sizeCalculator(DeviceSize(context).width, 43.99),
                            child: Image.asset(
                              clothes[index].imageUrl,
                              fit: BoxFit.contain,
                            ),
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
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
