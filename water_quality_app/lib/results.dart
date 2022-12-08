import 'dart:io';

import 'package:flutter/material.dart';
import 'package:water_quality_app/image_with_rgb.dart';
import 'package:water_quality_app/firebase.dart' as firebase;

class ResultsPage extends StatelessWidget {
  final File image;
  List<String> namesList = ["Total Alkalinity", "Sodium Chloride", "Fluoride", "Zinc", "Sulfate", "Nitrite", "Nitrate", "Mercury", "Total Chlorine", "Manganese", "Lead", "Copper", "Iron", "Hydrogen Sulfide", "Hardness", "pH"]; 
  //RGB(image: image),
  List<Color> colorList = [Colors.red, Colors.green, Colors.blue, Colors.black, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red];

  int index = 0;

  ResultsPage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
      ),
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index]
                ),
              Icon( Icons.square, 
                color: colorList[index],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index ]
                ),
              Icon( Icons.square, 
                color: colorList[index ],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index ]
                ),
              Icon( Icons.square, 
                color: colorList[index ],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index ]
                ),
              Icon( Icons.square, 
                color: colorList[index ],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index ]
                ),
              Icon( Icons.square, 
                color: colorList[index ],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index ]
                ),
              Icon( Icons.square, 
                color: colorList[index ],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index ]
                ),
              Icon( Icons.square, 
                color: colorList[index ],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index ]
                ),
              Icon( Icons.square, 
                color: colorList[index ],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index ]
                ),
              Icon( Icons.square, 
                color: colorList[index ],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index ]
                ),
              Icon( Icons.square, 
                color: colorList[index ],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index ]
                ),
              Icon( Icons.square, 
                color: colorList[index ],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index ]
                ),
              Icon( Icons.square, 
                color: colorList[index ],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index ]
                ),
              Icon( Icons.square, 
                color: colorList[index ],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index ]
                ),
              Icon( Icons.square, 
                color: colorList[index ],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index ]
                ),
              Icon( Icons.square, 
                color: colorList[index ],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index ]
                ),
                Icon( Icons.square, 
                color: colorList[index ],)
                ],),
      ]
      )
      

      );
    
    
  }
}
