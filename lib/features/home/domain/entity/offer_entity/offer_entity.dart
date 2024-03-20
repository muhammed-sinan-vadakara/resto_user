import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto_user/core/enums/offer_type.dart';

part 'offer_entity.freezed.dart';

@freezed
class OfferEntity with _$OfferEntity {
  const factory OfferEntity({
    required String id,
    required String imagePath,
    required String name,
    required String description,
    required double amount,
    required OfferType offerType,
    required List<String> products,
  }) = _OfferEntity;
}
