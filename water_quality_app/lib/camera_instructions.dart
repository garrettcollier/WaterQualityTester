import 'package:flutter/material.dart';
import 'package:water_quality_app/camera.dart';

class CameraInstructionPage extends StatelessWidget {
  CameraInstructionPage({super.key});

  // style elevated button
  final ButtonStyle styleButton = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20), backgroundColor: Colors.cyan);

  // style cards for listview
  final EdgeInsets margin = const EdgeInsets.symmetric(vertical: 10);
  final TextStyle textstyle = const TextStyle(fontSize: 20, fontStyle: FontStyle.italic)
  
  ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // to scroll through page
      body: Column(
        children: <Widget>[
          // instructions
          const Text(
            "Camera Instructions",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Card(
                margin: margin,
                child: Text("Note: TAKE PICTURES USING A DARK BACKGROUND",
                    style: textstyle),
              ),
              Card(
                margin: margin,
                child: Text("1. Use the camera in a VERTICAL ORIENTATION",
                    style: textstyle),
              ),
              Card(
                margin: margin,
                child: Text(
                    "2. Lineup the water test strip within the border of the overlay",
                    style: textstyle),
              ),
              Card(
                margin: margin,
                child: Text(
                    "3. IMPORTANT!!! Put the white part of the test strip at the very top of the image preview",
                    style: textstyle),
              ),
              Card(
                margin: margin,
                child: Text(
                    "4. Make sure to use a DARK background (preferably black)",
                    style: textstyle),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: styleButton,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CameraPage(),
                ),
              );
            },
            child: const Text("Open Camera",
            style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic)))
        ],
      ),
    );
  }
}
