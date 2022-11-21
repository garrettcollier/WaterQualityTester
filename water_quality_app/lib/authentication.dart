//from flutterfire tutorial

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

class AuthFunc extends StatelessWidget { //for signing into the database
  const AuthFunc({super.key, required this.loggedIn, required this.signOut});
  final bool loggedIn;
  final void Function() signOut;

  @override 
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, bottom: 8),
          child: ElevatedButton(
              onPressed: () {
                !loggedIn
                    ? Navigator.of(context).pushNamed('/sign-in')
                    : signOut();
              },
              child: !loggedIn ? const Text('Access Database') : const Text('Logout')),
        ),
      ],
    );
  }
}
