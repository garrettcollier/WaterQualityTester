import 'dart:io';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:water_quality_app/main.dart';
import 'package:water_quality_app/results.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraController? controller;
  bool _isCameraInitialized = false;

  void onNewCameraSelected(CameraDescription cameraDescription) async {
    final previousCameraController = controller;
    // Instantiating the camera controller
    final CameraController cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.high,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    // Dispose the previous controller
    await previousCameraController?.dispose();

    // Replace with the new controller
    if (mounted) {
      setState(() {
        controller = cameraController;
      });
    }

    // Update UI if controller updated
    cameraController.addListener(() {
      if (mounted) setState(() {});
    });

    // Initialize controller
    try {
      await cameraController.initialize();
    } on CameraException catch (e) {
      print('Error initializing camera: $e');
    }

    // Update the Boolean
    if (mounted) {
      setState(() {
        _isCameraInitialized = controller!.value.isInitialized;
      });
    }
  }

  @override
  void initState() {
    onNewCameraSelected(cameras[0]);
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: FractionalOffset.center,
        children: <Widget>[
          Positioned.fill(
            // if camera is initialized then give preview
            child: _isCameraInitialized
                ? AspectRatio(
                    aspectRatio: controller!.value.aspectRatio,
                    child: CameraPreview(controller!))
                : Container(),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: 0.3,
              // overlay border image
              child: Image.asset('assets/camera/cameraborder.jpg'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // take the picture in a try / catch block
          try {
            if (_isCameraInitialized) {
              // take a picture and get the file `image`
              XFile image = await controller!.takePicture();
              File imageFile = File(image.path);

              if (!mounted) return;

              // If the picture was taken, display with results
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    image: imageFile,
                  ),
                ),
              );
            }
          } catch (e) {
            // log the error to the console, if error occurs
            print(e);
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
