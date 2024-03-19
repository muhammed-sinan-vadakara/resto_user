// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get_it/get_it.dart';
// import 'package:resto_user/features/home/domain/usecase/get_catecgory_usecase.dart';
// import 'package:resto_user/features/home/presentation/bloc/category_bloc/category_bloc_state.dart';

// class GetAuthenticationEvent {}

// class CategoryBloc extends Bloc<GetAuthenticationEvent, AuthenticationBlocState> {
//   bool streamLoaded = false;

//   AuthenticationBloc()
//       : super(
//           AuthenticationBlocState(
//             categories: null,
//             error: null,
//           ),
//         ) {
//     on<GetCategoriesEvent>((event, emit) async {
//       await fetchAuthenticationData(emit);
//     });
//   }

  /// Fetch the category data
  // Future<void> fetchAuthenticationData(Emitter<AuthenticationBlocState> emit) async {
    // if (!streamLoaded) {
      // streamLoaded = true;
      // final categoryStream = GetAllAUseCase(repository: GetIt.I.get())();

      // await for (final categories in categoryStream) {
        // emit(state.copyWith(categories: categories));
      // }
    // }
  // }
// }
