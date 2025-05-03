import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBiqDNg58izGD0zUaur-Cg5OF_2sNUgbmU",
            authDomain: "project-jam-d7f25.firebaseapp.com",
            projectId: "project-jam-d7f25",
            storageBucket: "project-jam-d7f25.firebasestorage.app",
            messagingSenderId: "1095008354780",
            appId: "1:1095008354780:web:3ad3282c517b8686ae8f19",
            measurementId: "G-0N8V0SR50S"));
  } else {
    await Firebase.initializeApp();
  }
}
