import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB4k9N42Ob9qWUy_PtL1bD5MFlNEDspNAI',
    appId: '1:668123903606:android:d49841afee52a1d9d89157',
    messagingSenderId: '668123903606',
    projectId: 'yemen-aqar-app-3159f',
    storageBucket: 'yemen-aqar-app-3159f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC0qqolY3qT8YYpF3IuhL603SfKdsU317c',
    appId: '1:668123903606:ios:50cefba1228b2a14d89157',
    messagingSenderId: '668123903606',
    projectId: 'yemen-aqar-app-3159f',
    storageBucket: 'yemen-aqar-app-3159f.firebasestorage.app',
    iosBundleId: 'com.ebroker.wrteam',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBzWXNlm94n7Et4x0FOcMFB7qcm-LmkMlA',
    appId: '1:668123903606:web:6aaca73ecbb6d545d89157',
    messagingSenderId: '668123903606',
    projectId: 'yemen-aqar-app-3159f',
    authDomain: 'yemen-aqar-app-3159f.firebaseapp.com',
    storageBucket: 'yemen-aqar-app-3159f.firebasestorage.app',
    measurementId: 'G-33ZBX95SFW',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC0qqolY3qT8YYpF3IuhL603SfKdsU317c',
    appId: '1:668123903606:ios:52aead52161c998dd89157',
    messagingSenderId: '668123903606',
    projectId: 'yemen-aqar-app-3159f',
    storageBucket: 'yemen-aqar-app-3159f.firebasestorage.app',
    iosBundleId: 'com.aqar.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBzWXNlm94n7Et4x0FOcMFB7qcm-LmkMlA',
    appId: '1:668123903606:web:190211ee6615402ad89157',
    messagingSenderId: '668123903606',
    projectId: 'yemen-aqar-app-3159f',
    authDomain: 'yemen-aqar-app-3159f.firebaseapp.com',
    storageBucket: 'yemen-aqar-app-3159f.firebasestorage.app',
    measurementId: 'G-QY1KPT53CR',
  );

}