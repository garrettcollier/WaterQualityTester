import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:water_quality_app/select_tester_type.dart';
import 'package:water_quality_app/firebase.dart' as firebase;
import 'package:water_quality_app/results.dart' as results;

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const Front(),
    );
  }
}

class Front extends StatefulWidget {
  const Front({Key? key}) : super(key: key);

  @override
  State<Front> createState() => _FrontState();
}

class _FrontState extends State<Front> {
  final String _buttonText = "Test My Water";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: RichText(
            text: const TextSpan(children: [
              TextSpan(
                  text: "WATER",
                  style: TextStyle(
                      color: Color.fromARGB(255, 49, 227, 209),
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: " QUALITY TESTER",
                  style: TextStyle(
                      color: Color.fromARGB(255, 49, 227, 209),
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
            ]),
          ),
        ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 35),
              child: Text(
                "Water Testing Made Easy",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.cyan,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Righteous',
                    fontSize: 30
                  ),
                  ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SelectTesterPage(),
                  ),
                );
              },
              style: TextButton.styleFrom(
                  foregroundColor: Colors.cyan,
                  elevation: 2,
                  backgroundColor: Colors.white),
              child: Text(
                _buttonText,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            // TextButton(
            //     //Button to test adding to a collection.
            //     onPressed: () {
            //       final firebase.Firestore _firestore = firebase.Firestore();
            //       _firestore.addToCollections(9, 8);
            //     },
            //     child: Text("Test Firebase Button")),
            // TextButton(
            //     onPressed: () {
            //       final firebase.Firestore _firestore = firebase.Firestore();
            //       final results.Location _location = results.Location();
            //       _firestore.addLocationToCollections(GeoPoint(9, 3));
            //     },
            //     child: Text("Test Add Location"))
          ],
        ),
      ),
    );
  }
}
