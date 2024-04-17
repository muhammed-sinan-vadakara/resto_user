import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/features/authentication/domain/usecases/google_verification_usecase.dart';
import 'package:resto_user/features/authentication/domain/usecases/otp_verification_usecase.dart';
import 'package:resto_user/features/authentication/domain/usecases/phone_number_verification_usecase.dart';
import 'package:resto_user/features/authentication/presentation/bloc/authentication_bloc/authentication_bloc_state.dart';
import 'package:resto_user/features/authentication/presentation/page/otp_verify_page.dart';
import 'package:resto_user/features/home/presentation/pages/home_page.dart';
import 'package:resto_user/main.dart';

sealed class AuthenticationEvent {}

class LoginWithPhoneNumberEvent extends AuthenticationEvent {
  LoginWithPhoneNumberEvent({required this.phoneNumber});
  final String phoneNumber;
}

class OtpVerificationEvent extends AuthenticationEvent {
  OtpVerificationEvent({required this.otp});
  final String otp;
}

class LoginWithGoogleEvent extends AuthenticationEvent {}

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationBlocState> {
  AuthenticationBloc()
      : super(
          AuthenticationBlocState(
            error: null,
            resendToken: null,
            verificationId: "",
          ),
        ) {
    on<LoginWithPhoneNumberEvent>(loginWithPhoneNumber);
    on<OtpVerificationEvent>(otpVerification);
    // on<LoginWithGoogleEvent>(loginWithGoogleVerification);
  }

  Future<void> loginWithPhoneNumber(LoginWithPhoneNumberEvent event,
      Emitter<AuthenticationBlocState> emit) async {
    final verificationData = await PhoneNumberVerificationUsecase(
        repository: GetIt.I.get())(event.phoneNumber);
    emit(AuthenticationBlocState(
        error: null,
        resendToken: verificationData.$2,
        verificationId: verificationData.$1));
    Future.sync(() =>
        MyApp.navigatorKey.currentContext?.go(OtpVerificationPage.routePath));
  }

  Future<void> otpVerification(
    OtpVerificationEvent event,
    Emitter<AuthenticationBlocState> emit,
  ) async {
    await VerifyOtpUsecase(repository: GetIt.I.get())(
      state.verificationId.toString(),
      event.otp,
    );
    emit(AuthenticationBlocState(
      error: null,
      resendToken: null,
      verificationId: "",
    ));
    Future.sync(
        () => MyApp.navigatorKey.currentContext?.go(HomePage.routePath));
  }

  Future<void> loginWithGoogleVerification(LoginWithGoogleEvent event) async {
    await GoogleVerificationUsecase(repository: GetIt.I.get());
    Future.sync(
        () => MyApp.navigatorKey.currentContext?.go(HomePage.routePath));
  }
}
