import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_bloc_state.freezed.dart';

@freezed
class AuthenticationBlocState with _$AuthenticationBlocState {
  factory AuthenticationBlocState({
    required String verificationId,
    required int? resendToken,
    required String? error,
  }) = _AuthenticationBlocState;
}
