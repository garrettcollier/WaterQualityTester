import 'dart:io';

import 'package:flutter/material.dart';
import 'package:water_quality_app/image_with_rgb.dart';
import 'package:water_quality_app/firebase.dart' as firebase;

class ResultsPage extends StatelessWidget {
  final File image;
  List<String> namesList = ["Total Alkalinity", "Sodium Chloride", "Fluoride", "Zinc", "Sulfate", "Nitrite", "Nitrate", "Mercury", "Total Chlorine", "Manganese", "Lead", "Copper", "Iron", "Hydrogen Sulfide", "Hardness", "pH"]; 
  //RGB(image: image),
  List<Color> colorList = [Colors.red, Colors.green, Colors.blue, Colors.black];

  ResultsPage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
      ),
      body: GridView.count(
  crossAxisCount: 4,
  children: List.generate(64, (index) {
    return Center(
      child: 
          Column(
            children: [Text(
              namesList[index],
              style: Theme.of(context).textTheme.headline5,),
              Text(
                colorList[index].toString(),
                style: Theme.of(context).textTheme.headline5,
              )
            ],
          ),
    );
  }),
),
    );
    
  }
}
