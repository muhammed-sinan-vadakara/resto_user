abstract class FirebaseAuthDataSource {
  Future<(String, int?)> phoneNumberVerificationbyOtp(String phoneNumber);
  Future<void> verifyOtp(String verificationId, String otp);
  Future<void> logout();
  Future<void> googleverification();
}
