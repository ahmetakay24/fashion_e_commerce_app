import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fashion_e_commerce_app/screens/blog_list/model/blog_list_model.dart';

class BlogListService {
  final Dio dio = Dio();
  final String url = "https://ahmetakay24.github.io/fashion_e_commerce_app_mock_json/blog/posts.json";

  Future<List<BlogListModel>> downloadPosts() async {
    final response = await dio.get(url);
    if (response.statusCode == HttpStatus.ok) {
      var data = response.data as List;
      return data.map((e) => BlogListModel.fromJson(e)).toList();
    } else {
      throw Exception("Service Error");
    }
  }
}
