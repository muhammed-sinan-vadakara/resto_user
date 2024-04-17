import 'package:resto_user/core/exceptions/base_exception/base_exception.dart';
import 'package:resto_user/features/authentication/domain/repositories/auth_repository.dart';

final class GoogleVerificationUsecase {
  final AuthRepository repository;
  GoogleVerificationUsecase({
    required this.repository,
  });

  Future<void> call() async {
    try {
      await repository.googleverifications();
    } on Exception {
      throw BaseException(
        'cannot login with google',
      );
    }
  }
}
