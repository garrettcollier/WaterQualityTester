import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  CameraPageState createState() => CameraPageState();
}

class CameraPageState extends State<CameraPage> {
  // pick image and store image file
  ImagePicker picker = ImagePicker();
  XFile? image;

  // button style
  final styleButton =
      ElevatedButton.styleFrom(backgroundColor: Colors.lightGreenAccent);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  image = await picker.pickImage(source: ImageSource.camera);
                  setState(() {
                    //update UI
                  });
                },
                child: const Text("Take Picture")),
            image == null
                ? Expanded(
                    child: Container(),
                  )
                : Expanded(
                    child: Image.file(
                      File(image!.path),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
