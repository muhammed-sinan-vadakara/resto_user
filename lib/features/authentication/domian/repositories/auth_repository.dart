import 'dart:io';

import 'package:resto_user/features/authentication/domian/entity/details_add_entity.dart';

abstract class AuthRepository {
  Future<
      (
        String,
        int?,
      )> phoneNumberVerificationbyOtp(
    String phoneNumber,
  );

  Future<void> verifyPhoneOtp(
    String verificationId,
    String otp,
  );

  Future<void> googleverifications();

  Future<void> addDetails(
    DetailsAddEntity entity,
  );

  Future<String> upload(
    File fileToUpload,
    String filePath,
  );
}
