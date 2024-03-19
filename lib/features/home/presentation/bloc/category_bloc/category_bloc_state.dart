import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto_user/features/home/domain/entity/category_entity/category_entity.dart';

part 'category_bloc_state.freezed.dart';

@freezed
class CategoryBlocState with _$CategoryBlocState {
  factory CategoryBlocState({
    required List<CategoryEntity>? categories,
    required String selectedCategory,
    required String? error,
  }) = _CategoryBlocState;
}
