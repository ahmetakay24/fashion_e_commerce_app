part of 'blog_list_cubit.dart';

abstract class BlogListState {}

class BlogListLoading extends BlogListState {}

class BlogListLoaded extends BlogListState {
  List<BlogListModel> posts;

  BlogListLoaded({required this.posts});
}
