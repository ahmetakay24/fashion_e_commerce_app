import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_custom_widgets.dart';
import 'package:fashion_e_commerce_app/screens/blog_list/cubit/blog_list_cubit.dart';
import 'package:fashion_e_commerce_app/screens/blog_list/model/blog_list_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlogListView extends StatelessWidget {
  const BlogListView({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();
    DeviceSize size = DeviceSize(context);

    return BlocProvider(
      create: (context) => BlogListCubit()..fetchPosts(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: OpenFashionAppBar(
            context: context, colors: colors, size: size, appBarColors: Colors.white, iconBlackOrWhite: Colors.black),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: sizeCalculator(size.height, 3.70)),
                  child: BlogListTitle(size: size),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: sizeCalculator(size.height, 3.47)),
                    child: AppHeaderLine(size: size, colors: colors)),
                BlogListTagsSection(size: size, colors: colors),
                Padding(
                  padding: EdgeInsets.only(top: sizeCalculator(size.height, 3.51)),
                  child: SizedBox(
                    height: sizeCalculator(size.height, 135.75),
                    width: size.width,
                    child: BlocBuilder<BlogListCubit, BlogListState>(
                      builder: (context, state) {
                        if (state is BlogListLoading) {
                          return const Center(
                              child: CircularProgressIndicator(
                            color: Colors.black,
                          ));
                        } else if (state is BlogListLoaded) {
                          final posts = state.posts;
                          return BlogListListViewBuilder(size: size, posts: posts);
                        } else {
                          return const Text('No posts available');
                        }
                      },
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
          Container(
            decoration:
                BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(10)), color: colors.inputBackground),
            height: sizeCalculator(size.height, 4.01),
            width: sizeCalculator(size.width, 19.46),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: sizeCalculator(size.height, 1.00), horizontal: sizeCalculator(size.width, 2.66)),
              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Fashion")),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sizeCalculator(size.width, 3.19)),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)), color: colors.inputBackground),
              height: sizeCalculator(size.height, 4.01),
              width: sizeCalculator(size.width, 19.46),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: sizeCalculator(size.height, 1.00), horizontal: sizeCalculator(size.width, 2.66)),
                child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Fashion")),
              ),
            ),
          ),
          Container(
            decoration:
                BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(10)), color: colors.inputBackground),
            height: sizeCalculator(size.height, 4.01),
            width: sizeCalculator(size.width, 19.46),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: sizeCalculator(size.height, 1.00), horizontal: sizeCalculator(size.width, 2.66)),
              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Fashion")),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sizeCalculator(size.width, 3.19)),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)), color: colors.inputBackground),
              height: sizeCalculator(size.height, 4.01),
              width: sizeCalculator(size.width, 19.46),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: sizeCalculator(size.height, 1.00), horizontal: sizeCalculator(size.width, 2.66)),
                child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Fashion")),
              ),
            ),
          ),
          Container(
            decoration:
                BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(10)), color: colors.inputBackground),
            height: sizeCalculator(size.height, 4.01),
            width: sizeCalculator(size.width, 19.46),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: sizeCalculator(size.height, 1.00), horizontal: sizeCalculator(size.width, 2.66)),
              child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Fashion")),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sizeCalculator(size.width, 3.19)),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)), color: colors.inputBackground),
              height: sizeCalculator(size.height, 4.01),
              width: sizeCalculator(size.width, 19.46),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: sizeCalculator(size.height, 1.00), horizontal: sizeCalculator(size.width, 2.66)),
                child: const FittedBox(fit: BoxFit.fitWidth, child: Text("Fashion")),
              ),
            ),
          )
        ],
      ),
    );
  }
}

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
