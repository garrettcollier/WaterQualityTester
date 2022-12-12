import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

import 'package:water_quality_app/image_color_grid.dart';
import 'package:water_quality_app/main.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraController? controller;
  bool _isCameraInitialized = false;

  void onNewCameraSelected(CameraDescription cameraDescription) async {
    // previous camera controller
    final previousCameraController = controller;

    // instantiating the camera controller
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
      appBar: AppBar(),
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
              child: Image.asset('assets/camera/two_vert_lines.png'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // take the picture in a try / catch block
          try {
            if (_isCameraInitialized) {
              // turn off flash (affects light vs dark colors)
              controller!.setFlashMode(FlashMode.off);
              // take a picture and get the XFile as File
              XFile imageXFile = await controller!.takePicture();
              File imageFile = File(imageXFile.path);

              if (!mounted) return;

              // If the picture was taken, display with results
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RGBImageCheckPage(
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
