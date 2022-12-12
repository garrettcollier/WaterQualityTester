import 'package:flutter/material.dart';
import 'package:water_quality_app/select_tester_type.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructionPage extends StatelessWidget {
  InstructionPage({super.key});
  // style elevated button
  final ButtonStyle styleButton = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontFamily: 'Righteous' , fontSize: 20), 
      backgroundColor: Colors.cyan
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: RichText(
            text: const TextSpan(children: [
              TextSpan(
                  text: "INSTRUCTIONS",
                  style: TextStyle(
                      color: Color.fromARGB(255, 49, 227, 209),
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
            ]),
          ),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                key: const Key('selectbutton'),
                style: styleButton,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SelectTesterPage(),
                    ),
                  );
                },
                child: const Text('Select Another Test'),
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
