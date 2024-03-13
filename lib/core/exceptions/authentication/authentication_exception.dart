import 'package:resto_user/core/exceptions/base_exception/base_exception.dart';

class AuthenticationFailException extends BaseException {
  AuthenticationFailException(super.reason);
}
