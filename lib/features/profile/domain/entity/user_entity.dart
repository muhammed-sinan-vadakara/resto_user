import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity{
  factory UserEntity({
    required String imgPath,
    required String userName,
    required String mobileNumber,
    required String email,
  })=_UserEntity;
}