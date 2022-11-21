import 'dart:async'; // new

import 'package:cloud_firestore/cloud_firestore.dart'; // new
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:water_quality_app/firebase_options.dart';
import 'package:water_quality_app/authentication.dart';

class pH {
  pH({required this.name, required this.value});
  final String name;
  final int value;
}

class pHCollection extends StatefulWidget {
  const pHCollection({super.key, required this.addValue, required this.values});
  final FutureOr<void> Function(String message) addValue;
  final List<pH> values;

  Future addpHTopHCollection(int value) {
    return FirebaseFirestore.instance.collection('pH').add(<String, dynamic>{
      'value': value,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'name': FirebaseAuth.instance.currentUser!.displayName,
    });
  }

  @override
  State<pHCollection> createState() => _pHCollectionState();
}

class _pHCollectionState extends State<pHCollection> {
  final _formKey = GlobalKey<FormState>(debugLabel: '_pHCollectionState');
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Value',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Sample Value';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(width: 8),
            TextButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  await widget.addValue(_controller.text);
                  _controller.clear();
                }
              },
              child: Row(
                children: const [
                  SizedBox(width: 4),
                  Text('pH Value'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
