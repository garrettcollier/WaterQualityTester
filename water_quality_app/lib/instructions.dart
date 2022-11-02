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
      // to scroll through page
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
            // image one
            Card(
              elevation: 10,
              child: Image.asset("assets/easy_to_follow.jpg"),
            ),
            // image two
            Card(
              elevation: 10,
              child: Image.asset("assets/important_parameters.jpg"),
            ),
            // image three
            Card(
              elevation: 10,
              child: Image.asset("assets/why_choose.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
