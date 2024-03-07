// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferModelImpl _$$OfferModelImplFromJson(Map<String, dynamic> json) =>
    _$OfferModelImpl(
      id: json['id'] as String?,
      imagePath: json['imagepath'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      offerType: $enumDecode(_$OfferTypeEnumMap, json['offerType']),
      products:
          (json['products'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$OfferModelImplToJson(_$OfferModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagepath': instance.imagePath,
      'name': instance.name,
      'description': instance.description,
      'amount': instance.amount,
      'offerType': _$OfferTypeEnumMap[instance.offerType]!,
      'products': instance.products,
    };

const _$OfferTypeEnumMap = {
  OfferType.amount: 'amount',
  OfferType.percentage: 'percentage',
};
