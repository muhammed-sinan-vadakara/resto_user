import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto_user/features/map/domain/usecase/map_usecase.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';
part 'bloc_bloc.freezed.dart';

class BlocBloc extends Bloc<SearchPlaceEvent, SearchPlaceState> {
  final SearchMapUsecase usecase;
  BlocBloc(this.usecase) : super(SearchPlaceInitial()) {
    on<BlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
