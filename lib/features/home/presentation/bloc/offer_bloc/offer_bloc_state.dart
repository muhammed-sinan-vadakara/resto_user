import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto_user/features/home/domain/entity/offer_entity/offer_entity.dart';

part 'offer_bloc_state.freezed.dart';

@freezed
class OfferBlocState with _$OfferBlocState {
  factory OfferBlocState({
    required List<OfferEntity>? offers,
    required String? error,
  }) = _OfferBlocState;
}
