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
        return macos;
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
    apiKey: 'AIzaSyBE3tkXm9sxlxWxssu-AMSedymG-B1466M',
    appId: '1:132745061120:web:ac5caafc6e73edeeb849e5',
    messagingSenderId: '132745061120',
    projectId: 'draftbisa3',
    authDomain: 'draftbisa3.firebaseapp.com',
    storageBucket: 'draftbisa3.appspot.com',
    measurementId: 'G-JK4489P1C2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArhN56b-uiNVmAXTC0xzcJw1DJMj7IlG8',
    appId: '1:132745061120:android:58e820b4daacadf3b849e5',
    messagingSenderId: '132745061120',
    projectId: 'draftbisa3',
    storageBucket: 'draftbisa3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACYmOJ72tjxhVkxM6VwfiXZZJRQWzIz1Q',
    appId: '1:132745061120:ios:c122f0fec729c794b849e5',
    messagingSenderId: '132745061120',
    projectId: 'draftbisa3',
    storageBucket: 'draftbisa3.appspot.com',
    iosBundleId: 'com.example.draftbisa3',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyACYmOJ72tjxhVkxM6VwfiXZZJRQWzIz1Q',
    appId: '1:132745061120:ios:afeb3da77d53c7c7b849e5',
    messagingSenderId: '132745061120',
    projectId: 'draftbisa3',
    storageBucket: 'draftbisa3.appspot.com',
    iosBundleId: 'com.example.draftbisa3.RunnerTests',
  );
}
