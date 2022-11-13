import 'package:flutter/material.dart';
import 'package:water_quality_app/camera.dart';
import 'package:water_quality_app/epa_standards.dart';
import 'package:water_quality_app/instructions.dart';
import 'package:water_quality_app/map.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // home navigator for all pages
    return MaterialApp(
      home: Navigate(),
    );
  }
}

class Navigate extends StatefulWidget {
  Navigate({super.key});

  @override
  State<Navigate> createState() => _NavigateState();
}

// all pages for navigation
class _NavigateState extends State<Navigate> {
  int _selectedIndex = 2;
  // options for page widgets
  static final List<Widget> _widgetOptions = <Widget>[
    const CameraPage(),
    const EPAStandards(),
    InstructionPage(),
    MapPage(fromNavHome: true)
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
      appBar: AppBar(
        title: const Text('Water Tester'),
      ),
      body: Center(
        // display widget from _widgetoptions list
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // Camera Page
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          // EPA Standards Page
          BottomNavigationBarItem(
            icon: Icon(Icons.water),
            label: 'EPA Standards',
          ),
          BottomNavigationBarItem(
            // Home Page
            icon: Icon(Icons.integration_instructions),
            label: 'Instructions',
          ),
          BottomNavigationBarItem(
            // Map Page
            icon: Icon(Icons.map),
            label: 'Map',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
