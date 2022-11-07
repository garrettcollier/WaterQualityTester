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
            TextButton(onPressed: onPressed, child: Text("pH")),
            TextButton(onPressed: onPressed, child: Text("Hydrogen Sulfide")),
            TextButton(onPressed: onPressed, child: Text("Iron")),
            TextButton(onPressed: onPressed, child: Text("Copper")),
            TextButton(onPressed: onPressed, child: Text("Lead")),
            TextButton(onPressed: onPressed, child: Text("Manganese")),
            TextButton(onPressed: onPressed, child: Text("Total Chlorine")),
            TextButton(onPressed: onPressed, child: Text("Free Chlorine")),
            TextButton(onPressed: onPressed, child: Text("Nitrate")),
            TextButton(onPressed: onPressed, child: Text("Nitrite")),
            TextButton(onPressed: onPressed, child: Text("Sulfate")),
            TextButton(onPressed: onPressed, child: Text("Zinc")),
            TextButton(onPressed: onPressed, child: Text("Flouride")),
            TextButton(onPressed: onPressed, child: Text("Sodium Chloride")),
            TextButton(onPressed: onPressed, child: Text("Total Alkalinity")),
          ],
        ),
      ),
    );
  }
}
