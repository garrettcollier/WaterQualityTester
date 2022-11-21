import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:water_quality_app/begin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

List<CameraDescription> cameras = [];
Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
    await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  } on CameraException catch (e) {
    print('Error in fetching the cameras: $e');
  }
  runApp(
    FrontPage(),
    );
}
