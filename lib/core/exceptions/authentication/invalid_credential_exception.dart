import 'package:resto_user/core/exceptions/base_exception/base_exception.dart';

final class InvalidCredentialsException extends BaseException {
  InvalidCredentialsException() : super('Invalid user input');
}
