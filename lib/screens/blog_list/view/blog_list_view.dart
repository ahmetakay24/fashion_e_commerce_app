import 'package:fashion_e_commerce_app/core/colors/core_app_colors.dart';
import 'package:fashion_e_commerce_app/core/size/device_size.dart';
import 'package:fashion_e_commerce_app/core/widgets/app_custom_widgets.dart';
import 'package:fashion_e_commerce_app/screens/blog_list/cubit/blog_list_cubit.dart';
import 'package:fashion_e_commerce_app/screens/blog_list/view/widgets/blog_list_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlogListView extends StatelessWidget {
  const BlogListView({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();
    DeviceSize size = DeviceSize(context);

    double bottomPadding = MediaQuery.of(context).viewPadding.bottom;
    bool hasPhysicalHomeButton = bottomPadding == 0;

    return BlocProvider(
      create: (context) => BlogListCubit(),
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
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: sizeCalculator(size.height, 3.51), bottom: sizeCalculator(size.height, 4.14)),
                  child: BlogListLoadMoreButton(size: size),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: hasPhysicalHomeButton ? 0 : sizeCalculator(size.height, 3.52)),
                  child: AppFooter(size: size, colors: colors),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
