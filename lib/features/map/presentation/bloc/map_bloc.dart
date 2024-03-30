import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/features/map/domain/entity/map_entity.dart';
import 'package:resto_user/features/map/domain/repository/map_repository.dart';
import 'package:resto_user/features/map/domain/usecase/map_usecase.dart';
import 'package:resto_user/features/map/presentation/bloc/map_bloc_state.dart';

abstract class LocationBlocEvent {}

class GetLocationEvent extends LocationBlocEvent {
  final String searchText;

  GetLocationEvent(this.searchText);
}

class MapBloc extends Bloc<LocationBlocEvent, GetLocationBlocState> {
  MapBloc() : super(GetLocationBlocState(location: null, error: null)) {
    on<GetLocationEvent>(getLocationData);
  }

  //Get location Data
  Future<List<LocationEntity>> getLocationData(
      GetLocationEvent event, Emitter<GetLocationBlocState> emit) async {
    return GetLocationUseCase(repository: GetIt.I.get<MapAPIRepository>())(
        event.searchText);
  }
}
