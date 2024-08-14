import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_view_state.dart';

class CategoryViewCubit extends Cubit<CategoryViewState> {
  CategoryViewCubit() : super(CategoryViewInitial());
}
