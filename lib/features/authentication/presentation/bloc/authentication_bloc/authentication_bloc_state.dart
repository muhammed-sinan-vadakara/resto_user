import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_bloc_state.freezed.dart';

@freezed
class AuthenticationBlocState with _$AuthenticationBlocState {
  factory AuthenticationBlocState({
    required String? error,
    required int? resendToken,
    required String? verificationId,
  }) = _AuthenticationBlocState;
}
