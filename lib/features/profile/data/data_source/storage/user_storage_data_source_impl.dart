import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:resto_user/features/profile/data/data_source/storage/user_storage.data_source.dart';

class UserStorageDatSourceImpl implements UserStorageDataSource {
  final storageRef = FirebaseStorage.instance.ref();
  @override
  Future<String> addImage(File image, String fileName) async {
    await storageRef.child('users/$fileName').putFile(image);
    final filePath = storageRef.child('users/$fileName').fullPath;
    return filePath;
  }

  @override
  Future<void> deleteImage(String fileName) async {
    await storageRef.child('users/$fileName').delete();
  }
}
