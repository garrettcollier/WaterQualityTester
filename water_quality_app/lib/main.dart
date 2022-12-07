import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:water_quality_app/begin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:water_quality_app/firebase.dart' as firebase;

List<CameraDescription> cameras = [];
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  try {
    cameras = await availableCameras();
    final userCredential = await FirebaseAuth.instance.signInAnonymously();
    print("Signed in with temp account");
    print(userCredential.user!.uid); //user id for anonymous account
    firebase.userID = userCredential.user!.uid; //save the user's uid for use in the database
  } on CameraException catch (e) {
    print('Error in fetching the cameras: $e');
  } on FirebaseAuthException catch (e) {
    switch (e.code) {
      case "operation-not-allowed":
        print("Anonymous auth hasn't been enabled for this project.");
        break;
      default:
        print("Unknown error.");
        print(e.code);
    }
  }
  runApp(
    FrontPage(),
  );
}
