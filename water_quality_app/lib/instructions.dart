import 'package:flutter/material.dart';
import 'package:water_quality_app/main.dart';

class InstructionPage extends StatelessWidget {
  InstructionPage({super.key});
  // style elevated button
  final ButtonStyle styleButton = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20), backgroundColor: Colors.green);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              style: styleButton,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SelectTesterPage(),
                  ),
                );
              },
              child: const Text('Choose the Wrong Test Type? Click Me!'),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset('assets/Instructions.jpg', fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
