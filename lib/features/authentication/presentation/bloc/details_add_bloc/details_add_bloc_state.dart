import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_add_bloc_state.freezed.dart';

@freezed
class DetailsBlocState with _$DetailsBlocState {
  factory DetailsBlocState({
    required String? error,
    required String? imagePath,
    required String? name,
  }) = _DetailsBlocState;
}
