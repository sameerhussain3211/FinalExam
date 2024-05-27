import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyAeGOPQnrOWRzufPueGx_wfATSQVx8nnDQ',
    appId: '1:383535569508:web:ee930f57c9a8a762941d71',
    messagingSenderId: '383535569508',
    projectId: 'finalexam-20be8',
    authDomain: 'finalexam-20be8.firebaseapp.com',
    storageBucket: 'finalexam-20be8.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDjl53pSzfQHdbHlenfjNwquOXO1lJiVkg',
    appId: '1:383535569508:android:b39da90b29bedcd4941d71',
    messagingSenderId: '383535569508',
    projectId: 'finalexam-20be8',
    storageBucket: 'finalexam-20be8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBJQrU0B1I7jWQp-b6FuWtmHLfpZYbvgSQ',
    appId: '1:383535569508:ios:d2eeb0f038995ab0941d71',
    messagingSenderId: '383535569508',
    projectId: 'finalexam-20be8',
    storageBucket: 'finalexam-20be8.appspot.com',
    iosBundleId: 'com.example.finalexam',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBJQrU0B1I7jWQp-b6FuWtmHLfpZYbvgSQ',
    appId: '1:383535569508:ios:d2eeb0f038995ab0941d71',
    messagingSenderId: '383535569508',
    projectId: 'finalexam-20be8',
    storageBucket: 'finalexam-20be8.appspot.com',
    iosBundleId: 'com.example.finalexam',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAeGOPQnrOWRzufPueGx_wfATSQVx8nnDQ',
    appId: '1:383535569508:web:0543fb2522dfab7a941d71',
    messagingSenderId: '383535569508',
    projectId: 'finalexam-20be8',
    authDomain: 'finalexam-20be8.firebaseapp.com',
    storageBucket: 'finalexam-20be8.appspot.com',
  );
}
