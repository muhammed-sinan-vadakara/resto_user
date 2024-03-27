import 'dart:io';

import 'package:resto_user/core/exceptions/base_exception/base_exception.dart';
import 'package:resto_user/features/authentication/domian/entity/details_add_entity.dart';
import 'package:resto_user/features/authentication/domian/repositories/auth_repository.dart';

final class AddDetailsUseCase {
  final AuthRepository repository;
  AddDetailsUseCase({
    required this.repository,
  });
  Future<void> call({
    required String imagePath,
    required String id,
    required String name,
  }) async {
    try {
      final uploadPath = await repository.upload(
        File(imagePath),
        name,
      );
      return await repository.addDetails(
        DetailsAddEntity(
          imagePath: uploadPath,
          name: name,
          id: id,
        ),
      );
    } catch (e) {
      throw BaseException(
        e.toString(),
      );
    }
  }
}
