import 'package:flutter/material.dart';

import 'package:water_quality_app/camera_instructions.dart';
import 'package:water_quality_app/epa_standards.dart';
import 'package:water_quality_app/instructions.dart';
import 'package:water_quality_app/map.dart';
import 'package:water_quality_app/results.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // home navigator for all pages
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const Navigate(),
    );
  }
}

class Navigate extends StatefulWidget {
  const Navigate({super.key});

  @override
  State<Navigate> createState() => _NavigateState();
}

// all pages for navigation
class _NavigateState extends State<Navigate> {
  int _selectedIndex = 2;
  // options for page widgets
  static final List<Widget> _widgetOptions = <Widget>[
    CameraInstructionPage(),
    EPAStandards(),
    InstructionPage(),
    MapPage(fromNavHome: true),
    // ResultsPage(image: File('/Users/alexandriacade/WaterQualityTester/water_quality_app/assets/Varify Color Samples/Copper_Colors/Copper_0.1.jpg'))
    // Results page file input needs adjustment
  ];

  // update the index selected
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // display widget from _widgetoptions list
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // Camera Page
            icon: Icon(key:Key('iconcamera'),
            Icons.camera
            ),
            label: 'Camera',
          ),
          // EPA Standards Page
          BottomNavigationBarItem(
            icon: Icon(key:Key('iconwater'),
            Icons.water),
            label: 'EPA Standards',
          ),
          BottomNavigationBarItem(
            // Home Page
            icon: Icon(key:Key('iconinstructions'),
            Icons.integration_instructions),
            label: 'Instructions',
          ),
          BottomNavigationBarItem(
            // Map Page
            icon: Icon(key:Key('iconmap'),
            Icons.map),
            label: 'Map',
          ),
           //BottomNavigationBarItem(
               //icon: Icon(Icons.question_mark), label: 'Results')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.cyan,
        unselectedItemColor: const Color.fromARGB(255, 75, 128, 116),
        onTap: _onItemTapped,
      ),
    );
  }
}
