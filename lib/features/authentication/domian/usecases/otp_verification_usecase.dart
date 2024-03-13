// import 'package:resto_user/core/exceptions/authentication/invalid_credential_exception.dart';
// import 'package:resto_user/core/exceptions/base_exception/base_exception.dart';
// import 'package:resto_user/features/authentication/domian/repositories/auth_repository.dart';

// final class VerifyOtpUsecase {
//   final AuthRepository repository;
//   VerifyOtpUsecase({required this.repository});
//   Future<void> call(String verificationId, String otp) async {
//     if (otp.trim().isEmpty) {
//       throw InvalidCredentialsException();
//     }
//     try {
//       await repository.verifyPhoneOtp(verificationId, otp);
//     } on Exception {
//       throw BaseException('Enter your otp correctly,try again');
//     }
//   }
// }
