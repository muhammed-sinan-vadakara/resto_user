import 'dart:io';

import 'package:resto_user/features/authentication/data/datasource/authentication_datasource.dart';
import 'package:resto_user/features/authentication/data/datasource/details_add_firestore_datasource.dart';
import 'package:resto_user/features/authentication/data/datasource/details_add_storage_datasource.dart';
import 'package:resto_user/features/authentication/data/model/details_add_model.dart';
import 'package:resto_user/features/authentication/domian/entity/details_add_entity.dart';
import 'package:resto_user/features/authentication/domian/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuthDataSource datasource;
  final DetailsAddFirestoreDatasource detailsAddDataSource;
  final DetailsAddStorageDataSource detailsAddStoragedataSource;
  AuthRepositoryImpl({
    required this.datasource,
    required this.detailsAddDataSource,
    required this.detailsAddStoragedataSource,
  });

  @override
  Future<void> googleverifications() async {
    await datasource.googleverification();
  }

  @override
  Future<(String, int?)> phoneNumberVerificationbyOtp(
      String phoneNumber) async {
    return await datasource.phoneNumberVerificationbyOtp(phoneNumber);
  }

  @override
  Future<void> verifyPhoneOtp(String verificationId, String otp) async {
    await datasource.verifyOtp(verificationId, otp);
  }

  @override
  Future<void> addDetails(DetailsAddEntity entity) async {
    final detailsadd = DetailsAddModel(
      id: '',
      imagePath: entity.imagePath,
      name: entity.name,
    );
    await detailsAddDataSource.add(detailsadd);
  }

  @override
  Future<String> upload(File fileToUpload, String filePath) {
    return detailsAddStoragedataSource.add(fileToUpload, filePath);
  }
}
