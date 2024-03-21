import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_add_bloc_state.freezed.dart';

@freezed
class DetailsAddBlocState with _$DetailsAddBlocState {
  factory DetailsAddBlocState({
    required String? error,
    required String? imagePath,
    required String? name,
  }) = _DetailsAddBlocState;
}
