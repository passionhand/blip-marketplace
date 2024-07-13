import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBHge8BVqgtx-JQh_6Lbk3BVpxp9kcYLHw",
            authDomain: "blip-9967b.firebaseapp.com",
            projectId: "blip-9967b",
            storageBucket: "blip-9967b.appspot.com",
            messagingSenderId: "1064661490451",
            appId: "1:1064661490451:web:49be88c26a2040ca6a98e6",
            measurementId: "G-BJFE15WNX1"));
  } else {
    await Firebase.initializeApp();
  }
}
