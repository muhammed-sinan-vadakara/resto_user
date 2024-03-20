import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_user/features/map/presentation/bloc/map_bloc_state.dart';

abstract class GetLocationEvent {}

class GetLocation extends GetLocationEvent {
  final String searchText;

  GetLocation(this.searchText);
}

class MapBloc extends Bloc<GetLocationEvent, GetLocationBlocState> {}
