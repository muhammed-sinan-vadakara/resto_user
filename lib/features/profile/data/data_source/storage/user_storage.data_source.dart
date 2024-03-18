import 'dart:io';

abstract class UserStorageDataSource {
  Future<String> addImage(File image, String fileName);
  Future<void> deleteImage(String fileName);
}
