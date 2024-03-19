// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA1NvYQVsImD5Kmu81FEkXH7OJUQoZ5tYo',
    appId: '1:62127943109:web:27bc0400e7c2b54b5eafac',
    messagingSenderId: '62127943109',
    projectId: 'restoapp-c64f5',
    authDomain: 'restoapp-c64f5.firebaseapp.com',
    storageBucket: 'restoapp-c64f5.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAUfzrRvvS7n_RraBH5yqGzloa1CPWdeLk',
    appId: '1:62127943109:android:17badaeef4ecfd2f5eafac',
    messagingSenderId: '62127943109',
    projectId: 'restoapp-c64f5',
    storageBucket: 'restoapp-c64f5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDNPw3GzBnFrasxBJL8EPjCev4NyVH9nbk',
    appId: '1:62127943109:ios:05c07271b95370245eafac',
    messagingSenderId: '62127943109',
    projectId: 'restoapp-c64f5',
    storageBucket: 'restoapp-c64f5.appspot.com',
    iosBundleId: 'com.example.restoUser',
  );
}
