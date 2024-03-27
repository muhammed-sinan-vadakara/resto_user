import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto_user/features/map/domain/entity/map_entity.dart';

part 'map_bloc_state.freezed.dart';

@freezed
class GetLocationBlocState with _$GetLocationBlocState {
  factory GetLocationBlocState({
    required List<LocationEntity>? location,
    required String? error,
  }) = _GetLocationBlocState;
}
