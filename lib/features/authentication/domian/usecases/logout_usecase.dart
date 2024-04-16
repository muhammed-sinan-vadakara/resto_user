import 'package:resto_user/core/exceptions/authentication/authentication_exception.dart';
import 'package:resto_user/features/authentication/domian/repositories/auth_repository.dart';

final class LogoutUsecase {
  final AuthRepository repository;
  LogoutUsecase({required this.repository});

  Future<void> call() async {
    try {
      await repository.logout();
    } on Exception {
      throw AuthenticationFailException(
          'Cannot logout. Please check your network');
    }
  }
}
