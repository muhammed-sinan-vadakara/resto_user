import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/features/home/domain/usecase/get_catecgory_usecase.dart';
import 'package:resto_user/features/home/presentation/bloc/category_bloc/category_bloc_state.dart';

class GetCategoriesEvent {}

class CategoryBloc extends Bloc<GetCategoriesEvent, CategoryBlocState> {
  bool streamLoaded = false;

  CategoryBloc()
      : super(
          CategoryBlocState(
            categories: null,
            error: null,
          ),
        ) {
    on<GetCategoriesEvent>((event, emit) async {
      await fetchCategoryData(emit);
    });
  }

  /// Fetch the category data
  Future<void> fetchCategoryData(Emitter<CategoryBlocState> emit) async {
    if (!streamLoaded) {
      streamLoaded = true;
      final categoryStream = GetAllCategoryUseCase(repository: GetIt.I.get())();

      await for (final categories in categoryStream) {
        emit(state.copyWith(categories: categories));
      }
    }
  }
}
