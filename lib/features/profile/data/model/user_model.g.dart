// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      imgPath: json['imgPath'] as String,
      userName: json['user_name'] as String,
      mobileNumber: json['mobile_number'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'imgPath': instance.imgPath,
      'user_name': instance.userName,
      'mobile_number': instance.mobileNumber,
      'email': instance.email,
    };
