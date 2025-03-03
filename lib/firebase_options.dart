// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBumn4N5BRp_M_av11U5fcbTafY8xxq5N8',
    appId: '1:11340540892:web:52bd8e51c9086e14aebd19',
    messagingSenderId: '11340540892',
    projectId: 'fruits-store-b14b6',
    authDomain: 'fruits-store-b14b6.firebaseapp.com',
    storageBucket: 'fruits-store-b14b6.firebasestorage.app',
    measurementId: 'G-50JE6VZEE8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBI_GhpuR1hfuiwUTt1hdMwnpED7PxzZXo',
    appId: '1:11340540892:android:7bed9a57e80ca173aebd19',
    messagingSenderId: '11340540892',
    projectId: 'fruits-store-b14b6',
    storageBucket: 'fruits-store-b14b6.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDHILY9t41VpQmde2KArIRmYvhTzk2gXxE',
    appId: '1:11340540892:ios:cd45697d98811bc7aebd19',
    messagingSenderId: '11340540892',
    projectId: 'fruits-store-b14b6',
    storageBucket: 'fruits-store-b14b6.firebasestorage.app',
    iosBundleId: 'com.example.fruitsStore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDHILY9t41VpQmde2KArIRmYvhTzk2gXxE',
    appId: '1:11340540892:ios:cd45697d98811bc7aebd19',
    messagingSenderId: '11340540892',
    projectId: 'fruits-store-b14b6',
    storageBucket: 'fruits-store-b14b6.firebasestorage.app',
    iosBundleId: 'com.example.fruitsStore',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBumn4N5BRp_M_av11U5fcbTafY8xxq5N8',
    appId: '1:11340540892:web:39f6563b403b30b9aebd19',
    messagingSenderId: '11340540892',
    projectId: 'fruits-store-b14b6',
    authDomain: 'fruits-store-b14b6.firebaseapp.com',
    storageBucket: 'fruits-store-b14b6.firebasestorage.app',
    measurementId: 'G-6LJPSLYRZV',
  );
}
