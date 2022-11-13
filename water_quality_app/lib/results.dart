import 'dart:io';

import 'package:flutter/material.dart';
import 'package:water_quality_app/image_with_rgb.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key, required this.imageFile});

  final File imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
      ),
      body: RGB(image: imageFile),
    );
  }
}
