import 'package:resto_user/features/authentication/data/datasource/authentication_datasource.dart';
import 'package:resto_user/features/authentication/domian/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuthDataSource datasource;
  AuthRepositoryImpl({required this.datasource});

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
}
