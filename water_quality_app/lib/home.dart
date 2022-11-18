import 'package:flutter/material.dart';
import 'package:water_quality_app/camera.dart';
import 'package:water_quality_app/epa_standards.dart';
import 'package:water_quality_app/instructions.dart';
import 'package:water_quality_app/map.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // home navigator for all pages
    return MaterialApp(
      home: Navigate(),
      routes: {
        '/sign-in': ((context) {
          return SignInScreen(
            actions: [
              ForgotPasswordAction(((context, email) {
                Navigator.of(context)
                    .pushNamed('/forgot-password', arguments: {'email': email});
              })),
              AuthStateChangeAction(((context, state) {
                if (state is SignedIn || state is UserCreated) {
                  var user = (state is SignedIn)
                      ? state.user
                      : (state as UserCreated).credential.user;
                  if (user == null) {
                    return;
                  }
                  if (state is UserCreated) {
                    user.updateDisplayName(user.email!.split('@')[0]);
                  }
                  if (!user.emailVerified) {
                    user.sendEmailVerification();
                    const snackBar = SnackBar(
                        content: Text(
                            'Please check your email to verify your email address'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                  Navigator.of(context).pushReplacementNamed('/home');
                }
              })),
            ],
          );
        }),
        '/forgot-password': ((context) {
          final arguments = ModalRoute.of(context)?.settings.arguments
              as Map<String, dynamic>?;

          return ForgotPasswordScreen(
            email: arguments?['email'] as String,
            headerMaxExtent: 200,
          );
        }),
        '/profile': ((context) {
          return ProfileScreen(
            providers: [],
            actions: [
              SignedOutAction(
                ((context) {
                  Navigator.of(context).pushReplacementNamed('/home');
                }),
              ),
            ],
          );
        })
      },
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
