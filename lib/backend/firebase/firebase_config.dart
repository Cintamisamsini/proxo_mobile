import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCbdMCuSsmFEsNZRg7_vIilHEALipfsfwM",
            authDomain: "co-collect.firebaseapp.com",
            projectId: "co-collect",
            storageBucket: "co-collect.appspot.com",
            messagingSenderId: "1046055671099",
            appId: "1:1046055671099:web:c3694c98fdb00f7d69531e",
            measurementId: "G-YGRP86H9LD"));
  } else {
    await Firebase.initializeApp();
  }
}
