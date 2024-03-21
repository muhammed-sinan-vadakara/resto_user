import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_bloc_state.freezed.dart';

@freezed
class PaymentBlocState with _$PaymentBlocState {
  const factory PaymentBlocState({
    required bool loading,
    required bool success,
    required bool failure,
  }) = _PaymentBlocState;

}
