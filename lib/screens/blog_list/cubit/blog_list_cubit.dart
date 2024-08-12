import 'dart:async';

import 'package:fashion_e_commerce_app/screens/blog_list/model/blog_list_model.dart';
import 'package:fashion_e_commerce_app/screens/blog_list/service/blog_list_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'blog_list_state.dart';

class BlogListCubit extends Cubit<BlogListState> {
  BlogListCubit() : super(BlogListLoading());

  final BlogListService service = BlogListService();

  Future<void> fetchPosts() async {
    emit(BlogListLoading());
    var posts = await service.downloadPosts();
    emit(BlogListLoaded(posts: posts));
  }
}
