import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAwhEgvK1Qj6dlM-I6CF9p1jvowRoSyZLo",
            authDomain: "cmpr-916b4.firebaseapp.com",
            projectId: "cmpr-916b4",
            storageBucket: "cmpr-916b4.firebasestorage.app",
            messagingSenderId: "988668207212",
            appId: "1:988668207212:web:5378a32b1ef157a9f7b849",
            measurementId: "G-RWBW8KZZZ9"));
  } else {
    await Firebase.initializeApp();
  }
}
