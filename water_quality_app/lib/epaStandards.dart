import 'dart:collection';

import 'package:flutter/material.dart';

class EPAStandards extends StatelessWidget {
  EPAStandards({super.key});

  final standards = <String, String>{
    "pH":
        "U.S. EPA water quality criteria for pH in freshwater suggest a range of 6.5 to 9."
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("EPA Standards")),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AlertDialog(
                          title: Text("pH"), //https://www.epa.gov/caddis-vol2/ph#:~:text=U.S.%20EPA%20water%20quality%20criteria,range%20of%206.5%20to%209.
                          content: Text(
                              "U.S. EPA water quality criteria for pH in freshwater suggest a range of 6.5 to 9."),
                        );
                      });
                },
                child: Text("pH")),
            TextButton(onPressed: () {}, child: Text("Hydrogen Sulfide")),
            TextButton(onPressed: () {}, child: Text("Iron")),
            TextButton(onPressed: () {}, child: Text("Copper")),
            TextButton(onPressed: () {}, child: Text("Lead")),
            TextButton(onPressed: () {}, child: Text("Manganese")),
            TextButton(onPressed: () {}, child: Text("Total Chlorine")),
            TextButton(onPressed: () {}, child: Text("Free Chlorine")),
            TextButton(onPressed: () {}, child: Text("Nitrate")),
            TextButton(onPressed: () {}, child: Text("Nitrite")),
            TextButton(onPressed: () {}, child: Text("Sulfate")),
            TextButton(onPressed: () {}, child: Text("Zinc")),
            TextButton(onPressed: () {}, child: Text("Flouride")),
            TextButton(onPressed: () {}, child: Text("Sodium Chloride")),
            TextButton(onPressed: () {}, child: Text("Total Alkalinity")),
          ],
        ),
      ),
    );
  }
}
