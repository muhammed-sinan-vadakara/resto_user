import 'dart:io';

import 'package:resto_user/features/profile/data/data_source/firestore/user_firestore_data_source.dart';
import 'package:resto_user/features/profile/data/data_source/storage/user_storage.data_source.dart';
import 'package:resto_user/features/profile/data/model/user_model.dart';
import 'package:resto_user/features/profile/domain/entity/user_entity.dart';
import 'package:resto_user/features/profile/domain/repository/user_data_repository.dart';

class UserDataRepositoryImpl implements UserDataRepository {
  final UserFirestoreDataSource firestoreDataSource;
  final UserStorageDataSource storageDatSource;
  UserDataRepositoryImpl(
      {required this.firestoreDataSource, required this.storageDatSource});

  @override
  Stream<UserEntity> getUserData(String uid) async* {
    final models = firestoreDataSource.getUserData(uid);
    await for (final model in models) {
      yield UserEntity(
          imgPath: model.imgPath,
          userName: model.userName,
          mobileNumber: model.mobileNumber,
          email: model.email);
    }
  }

  @override
  Future<void> setUserData(UserEntity userEntity, String uid) async {
    final model = UserModel(
        imgPath: userEntity.imgPath,
        userName: userEntity.userName,
        mobileNumber: userEntity.mobileNumber,
        email: userEntity.email);

    firestoreDataSource.setUserData(model, uid);
  }

  @override
  Future<String> addImage(File image, String fileName) async {
    return storageDatSource.addImage(image, fileName);
  }

  @override
  Future<void> deleteImage(String fileName) async {
    storageDatSource.deleteImage(fileName);
  }
}
