import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_images.dart';
import 'package:fashion_e_commerce_app/screens/blog_list/model/blog_list_model.dart';
import 'package:flutter/material.dart';

class BlogListTitle extends StatelessWidget {
  const BlogListTitle({
    super.key,
    required this.size,
  });

  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 4.09),
      width: sizeCalculator(size.width, 18.87),
      child: const FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          "BLOG",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

//date kısmı fixlenicek

class BlogListTagsSection extends StatelessWidget {
  const BlogListTagsSection({
    super.key,
    required this.size,
    required this.colors,
  });

  final DeviceSize size;
  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeCalculator(size.height, 4.01),
      width: size.width,
      child: ListView(
        padding: EdgeInsets.only(left: sizeCalculator(size.width, 4.26)),
        scrollDirection: Axis.horizontal,
        children: [
          BlogListTag(tagName: "Fashion", colors: colors, size: size),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sizeCalculator(size.width, 3.19)),
            child: BlogListTag(tagName: "Promo", colors: colors, size: size),
          ),
          BlogListTag(tagName: "Policy", colors: colors, size: size),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sizeCalculator(size.width, 3.19)),
            child: BlogListTag(tagName: "Lookbook", colors: colors, size: size),
          ),
          BlogListTag(tagName: "Sale", colors: colors, size: size)
        ],
      ),
    );
  }
}

class BlogListTag extends StatelessWidget {
  const BlogListTag({
    super.key,
    required this.colors,
    required this.size,
    required this.tagName,
  });

  final AppColors colors;
  final DeviceSize size;
  final String tagName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(10)), color: colors.inputBackground),
      height: sizeCalculator(size.height, 4.01),
      width: sizeCalculator(size.width, tagName.length * 2.78),
      child: Center(child: FittedBox(fit: BoxFit.fitWidth, child: Text(tagName))),
    );
  }
}

class BlogListListViewBuilder extends StatelessWidget {
  const BlogListListViewBuilder({super.key, required this.size, required this.posts});

  final DeviceSize size;
  final List<BlogListModel> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      padding: EdgeInsets.only(
        left: sizeCalculator(size.width, 4.26),
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 3.09)),
          child: SizedBox(
            height: sizeCalculator(size.height, 19.44),
            width: sizeCalculator(size.width, 91.43),
            child: Row(
              children: [
                SizedBox(
                  height: sizeCalculator(size.height, 19.44),
                  width: sizeCalculator(size.width, 31.99),
                  child: FittedBox(
                      fit: BoxFit.cover, child: CachedNetworkImage(imageUrl: posts[index].imageUrl ?? "Data Empty")),
                ),
                SizedBox(
                  height: sizeCalculator(size.height, sizeCalculator(size.height, 19.44)),
                  width: sizeCalculator(size.width, 59.43),
                  child: Padding(
                    padding: EdgeInsets.only(left: sizeCalculator(size.width, 3.19)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: sizeCalculator(size.height, 1.25), bottom: sizeCalculator(size.height, 1.25)),
                          child: SizedBox(
                            height: sizeCalculator(size.height, 5.64),
                            width: sizeCalculator(size.width, 56.31),
                            child: AutoSizeText(
                              posts[index].title ?? "Data Emty",
                              presetFontSizes: const [19, 18, 17, 16, 15],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 1.25)),
                          child: SizedBox(
                            height: sizeCalculator(size.height, 7.52),
                            width: sizeCalculator(size.width, 56.31),
                            child: AutoSizeText(
                              posts[index].body ?? "Data Empty",
                              presetFontSizes: const [16, 15, 14, 13, 12],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: sizeCalculator(size.height, 2.50),
                          width: sizeCalculator(size.width, 16.53),
                          child: AutoSizeText(posts[index].date ?? "Data Empty"),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class BlogListLoadMoreButton extends StatelessWidget {
  const BlogListLoadMoreButton({
    super.key,
    required this.size,
  });

  final DeviceSize size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeCalculator(size.height, 6.02),
      width: sizeCalculator(size.width, 56.26),
      color: const Color.fromRGBO(222, 222, 222, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: sizeCalculator(size.height, 3.01),
            width: sizeCalculator(size.width, 27.99),
            child: const FittedBox(fit: BoxFit.fitWidth, child: Text("LOAD MORE")),
          ),
          Padding(
            padding: EdgeInsets.only(left: sizeCalculator(size.width, 4.26)),
            child: InkWell(
              child: SizedBox(
                height: sizeCalculator(size.height, 3.01),
                width: sizeCalculator(size.width, 6.39),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: sizeCalculator(size.width, 0.79), vertical: sizeCalculator(size.height, 0.37)),
                  child: const FittedBox(fit: BoxFit.cover, child: AppIcons(icon: "Plus")),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
