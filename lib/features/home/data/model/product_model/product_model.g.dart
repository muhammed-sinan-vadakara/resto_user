// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as String,
      imagePath: json['imagePath'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      categoryId: json['categoryId'] as String,
      types: (json['types'] as List<dynamic>)
          .map((e) => ProductTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      addOns: (json['addOns'] as List<dynamic>)
          .map((e) => ProductAddonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableFrom: json['availableFrom'] as String,
      availableUpTo: json['availableUpTo'] as String,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'name': instance.name,
      'description': instance.description,
      'categoryId': instance.categoryId,
      'types': instance.types.map((e) => e.toJson()).toList(),
      'addOns': instance.addOns.map((e) => e.toJson()).toList(),
      'availableFrom': instance.availableFrom,
      'availableUpTo': instance.availableUpTo,
    };
