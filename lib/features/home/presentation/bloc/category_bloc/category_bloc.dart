import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/features/home/domain/usecase/get_catecgory_usecase.dart';
import 'package:resto_user/features/home/presentation/bloc/category_bloc/category_bloc_state.dart';
import 'package:resto_user/features/home/presentation/bloc/product_bloc/product_bloc.dart';

abstract class CategoriesBlocEvent {}

class GetCategoriesEvent extends CategoriesBlocEvent {}

class SelectCategoryEvent extends CategoriesBlocEvent {
  final String categoryId;

  SelectCategoryEvent(this.categoryId);
}

class CategoryBloc extends Bloc<CategoriesBlocEvent, CategoryBlocState> {
  bool streamLoaded = false;

  CategoryBloc()
      : super(
          CategoryBlocState(
            categories: null,
            selectedCategory: '',
            error: null,
          ),
        ) {
    on<GetCategoriesEvent>((event, emit) async {
      await fetchCategoryData(emit);
    });

    on<SelectCategoryEvent>(updateSelectedCategory);
  }

  /// Update selected category
  void updateSelectedCategory(
      SelectCategoryEvent event, Emitter<CategoryBlocState> emit) {
    emit(state.copyWith(selectedCategory: event.categoryId));
    GetIt.I.get<ProductBloc>().add(GetProductEvent(event.categoryId));
  }

  /// Fetch the category data
  Future<void> fetchCategoryData(Emitter<CategoryBlocState> emit) async {
    if (!streamLoaded) {
      streamLoaded = true;
      final categoryStream = GetAllCategoryUseCase(repository: GetIt.I.get())();

      await for (final categories in categoryStream) {
        emit(
          state.copyWith(
            categories: categories,
          ),
        );

        if (state.selectedCategory.isEmpty) {
          updateSelectedCategory(
            SelectCategoryEvent(categories.first.id),
            emit,
          );
        }
      }
    }
  }
}
