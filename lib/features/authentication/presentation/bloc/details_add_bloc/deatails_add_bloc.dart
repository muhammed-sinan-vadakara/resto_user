import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/features/authentication/domain/usecases/details_add_usecase.dart';
import 'package:resto_user/features/authentication/presentation/bloc/details_add_bloc/details_add_bloc_state.dart';

sealed class DetailsEvent {}

class DetailsAddEvent extends DetailsEvent {
  DetailsAddEvent({
    required this.name,
    required this.imagePath,
  });
  final String name;
  final String imagePath;
}

class DetailsBloc extends Bloc<DetailsEvent, DetailsBlocState> {
  DetailsBloc()
      : super(
          DetailsBlocState(
            error: null,
            name: "",
            imagePath: "",
          ),
        ) {
    on<DetailsAddEvent>(addDetails);
  }

  Future<void> addDetails(
      DetailsAddEvent event, Emitter<DetailsBlocState> emit) async {
    final addDetailsData = await AddDetailsUseCase(repository: GetIt.I.get())(
      id: "",
      imagePath: event.imagePath,
      name: event.name,
    );
  }
}
