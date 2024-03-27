import 'dart:io';

abstract class DetailsAddStorageDataSource {
  Future<String> add(File image, String fileName);
}
