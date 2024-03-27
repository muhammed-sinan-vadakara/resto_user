import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:resto_user/features/authentication/data/datasource/details_add_storage_datasource.dart';

class DetailsAddStorageDataSourceImpl implements DetailsAddStorageDataSource {
  final storageRef = FirebaseStorage.instance.ref();
  @override
  Future<String> add(File image, String fileName) async {
    await storageRef.child('user/$fileName').putFile(image);
    final filePath = storageRef.child('user/$fileName').fullPath;
    return filePath;
  }
}
