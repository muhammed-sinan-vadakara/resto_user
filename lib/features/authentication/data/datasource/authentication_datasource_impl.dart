import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:resto_user/core/exceptions/authentication/invalid_credential_exception.dart';
import 'package:resto_user/core/exceptions/base_exception/base_exception.dart';
import 'package:resto_user/features/authentication/data/datasource/authentication_datasource.dart';

final class FirebaseAuthDataSourceImpl implements FirebaseAuthDataSource {
  final FirebaseAuth _auth;
  FirebaseAuthDataSourceImpl(this._auth);

  @override
  Future<(String, int?)> phoneNumberVerificationbyOtp(String phoneNumber,
      [int? resendToken]) async {
    try {
      final verificationIdCompleter = Completer<String>();
      final resendTokenCompleter = Completer<int>();

      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        forceResendingToken: resendToken,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          if (e.code == 'invalid number') {}
        },
        codeSent: (String? verificationId, int? resendToken) async {
          verificationIdCompleter.complete(verificationId);
          resendTokenCompleter.complete(resendToken);
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
      final verificationId = await verificationIdCompleter.future;
      final newResendToken = await resendTokenCompleter.future;

      return (verificationId, newResendToken);
    } on Exception {
      throw BaseException('cannot login');
    }
  }

  @override
  Future<void> verifyOtp(String verificationId, String otp) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: otp);
    await _auth.signInWithCredential(credential);
  }

  @override
  Future<void> googleverification() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
    } on Exception {
      throw InvalidCredentialsException();
    }
  }

  @override
  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }
}








// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:resto_user/core/exceptions/authentication/invalid_credential_exception.dart';
// import 'package:resto_user/core/exceptions/base_exception/base_exception.dart';

// part 'firebase_auth_bloc.g.dart';

// enum FirebaseAuthEvent {
//   phoneNumberVerificationRequested,
//   phoneNumberVerified,
//   otpVerificationRequested,
//   otpVerified,
//   googleSignInRequested,
//   googleSignInSuccessful,
//   googleSignInFailed,
//   logoutRequested,
//   logoutSuccessful,
//   logoutFailed,
// }

// class FirebaseAuthState extends Equatable {
//   final bool isLoading;
//   final String? verificationId;
//   final int? resendToken;
//   final String? errorMessage;
//   final User? user;

//   const FirebaseAuthState({
//     this.isLoading = false,
//     this.verificationId,
//     this.resendToken,
//     this.errorMessage,
//     this.user,
//   });

//   @override
//   List<Object?> get props => [
//     isLoading,
//     verificationId,
//     resendToken,
//     errorMessage,
//     user,
//   ];

//   FirebaseAuthState copyWith({
//     bool? isLoading,
//     String? verificationId,
//     int? resendToken,
//     String? errorMessage,
//     User? user,
//   }) {
//     return FirebaseAuthState(
//       isLoading: isLoading ?? this.isLoading,
//       verificationId: verificationId ?? this.verificationId,
//       resendToken: resendToken ?? this.resendToken,
//       errorMessage: errorMessage ?? this.errorMessage,
//       user: user ?? this.user,
//     );
//   }
// }

// class FirebaseAuthBloc extends Bloc<FirebaseAuthEvent, FirebaseAuthState> {
//   final FirebaseAuth _auth;

//   FirebaseAuthBloc(this._auth) : super(const FirebaseAuthState()) {
//     on<PhoneNumberVerificationRequested>(_onPhoneNumberVerificationRequested);
//     on<PhoneNumberVerified>(_onPhoneNumberVerified);
//     on<OtpVerificationRequested>(_onOtpVerificationRequested);
//     on<OtpVerified>(_onOtpVerified);
//     on<GoogleSignInRequested>(_onGoogleSignInRequested);
//     on<LogoutRequested>(_onLogoutRequested);
//   }

//   Future<void> _onPhoneNumberVerificationRequested(
//       PhoneNumberVerificationRequested event, emit) async {
//     emit(state.copyWith(isLoading: true));
//     try {
//       final verificationIdCompleter = Completer<String>();
//       final resendTokenCompleter = Completer<int>();

//       await FirebaseAuth.instance.verifyPhoneNumber(
//         phoneNumber: event.phoneNumber,
//         verificationCompleted: (PhoneAuthCredential credential) async {
//           await _auth.signInWithCredential(credential);
//           emit(state.copyWith(user: _auth.currentUser));
//         },
//         verificationFailed: (FirebaseAuthException e) {
//           if (e.code == 'invalid-number') {
//             emit(state.copyWith(errorMessage: 'Invalid phone number'));
//           } else {
//             emit(state.copyWith(errorMessage: 'Verification failed'));
//           }
//         },
//         codeSent: (String? verificationId, int? resendToken) async {
//           verificationIdCompleter.complete(verificationId);
//           resendTokenCompleter.complete(resendToken);
//         },
//         codeAutoRetrievalTimeout: (String verificationId) {},
//       );

//       final verificationId = await verificationIdCompleter.future;
//       final newResendToken = await resendTokenCompleter.future;

//       emit(state.copyWith(verificationId: verificationId, resendToken: newResendToken));
//     } on Exception {
//       emit(state.copyWith(errorMessage: 'An error occurred'));
//     } finally {
//       emit(state.copyWith(isLoading: false));
//     }
//   }

//   Future<void> _onPhoneNumberVerified(
//       PhoneNumberVerified event, emit) async =>
//     emit(state.copyWith(verificationId: null, resendToken: null)); // Clear verification details

//   Future<void> _onOtpVerificationRequested(OtpVerificationRequested event, emit) async {
//     emit(state.copyWith(isLoading: true));
//     try {
//       final credential = PhoneAuthProvider.credential