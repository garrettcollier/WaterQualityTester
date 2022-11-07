import 'package:flutter/material.dart';

class EPAStandards extends StatelessWidget {
  EPAStandards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("EPA Standards")),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextButton(onPressed: () {}, child: Text("pH")),
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
