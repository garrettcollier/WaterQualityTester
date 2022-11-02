import 'dart:io';

import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final File image;

  const ResultsPage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Image.file(image),
        ),
      ),
    );
  }
}
