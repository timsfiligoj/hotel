import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBvFTNqnxmfoWPAEUh2LYWjdaLrZlSbt-4",
            authDomain: "hotels-cfc9e.firebaseapp.com",
            projectId: "hotels-cfc9e",
            storageBucket: "hotels-cfc9e.appspot.com",
            messagingSenderId: "1008916308799",
            appId: "1:1008916308799:web:8b2f1dbcd8cc218cec298a"));
  } else {
    await Firebase.initializeApp();
  }
}
