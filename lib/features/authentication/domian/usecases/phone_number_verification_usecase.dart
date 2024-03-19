import 'package:resto_user/core/exceptions/authentication/authentication_exception.dart';
import 'package:resto_user/core/exceptions/authentication/invalid_credential_exception.dart';
import 'package:resto_user/features/authentication/domian/repositories/auth_repository.dart';

final class PhoneNumberVerificationUsecase {
  final AuthRepository repository;
  PhoneNumberVerificationUsecase({required this.repository});

  Future<(String, int?)> call(String phoneNumber) async {
    if (phoneNumber.trim().isEmpty) {
      throw InvalidCredentialsException();
    }
    try {
      return await repository.phoneNumberVerificationbyOtp(phoneNumber);
    } on Exception {
      throw AuthenticationFailException(
          'Cannot send the otp to your phone number \n please put your correct phone number');
    }
  }
}
