import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB-i0tgAAfpyRqeZNVTgvuNfaomcQC0_9w",
            authDomain: "chabap-2a903.firebaseapp.com",
            projectId: "chabap-2a903",
            storageBucket: "chabap-2a903.appspot.com",
            messagingSenderId: "881904543510",
            appId: "1:881904543510:web:6b2cb7790efdbb6bae9237",
            measurementId: "G-36N52XEQ39"));
  } else {
    await Firebase.initializeApp();
  }
}
