import 'dart:io';

import 'package:resto_user/features/profile/domain/entity/user_entity.dart';

abstract class UserDataRepository{
  Future<void> setUserData(UserEntity userEntity,String uid);
  Stream<UserEntity> getUserData(String uid);
  Future<String> addImage(File image, String fileName);
  Future<void> deleteImage(String fileName);
}