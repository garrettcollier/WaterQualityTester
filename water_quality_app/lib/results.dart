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
                namesList[0]
                ),
              Icon( Icons.square, 
                color: colorList[0],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[1]
                ),
              Icon( Icons.square, 
                color: colorList[1],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[2]
                ),
              Icon( Icons.square, 
                color: colorList[2],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[3]
                ),
              Icon( Icons.square, 
                color: colorList[3],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[4]
                ),
              Icon( Icons.square, 
                color: colorList[4],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[5]
                ),
              Icon( Icons.square, 
                color: colorList[5],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[6]
                ),
              Icon( Icons.square, 
                color: colorList[6],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[7]
                ),
              Icon( Icons.square, 
                color: colorList[7],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[8]
                ),
              Icon( Icons.square, 
                color: colorList[8],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[9]
                ),
              Icon( Icons.square, 
                color: colorList[9],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[10]
                ),
              Icon( Icons.square, 
                color: colorList[10],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[11]
                ),
              Icon( Icons.square, 
                color: colorList[11],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[12]
                ),
              Icon( Icons.square, 
                color: colorList[12],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[13]
                ),
              Icon( Icons.square, 
                color: colorList[13],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[14]
                ),
              Icon( Icons.square, 
                color: colorList[14],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[15]
                ),
                Icon( Icons.square, 
                color: colorList[15],)
                ],),
      ]
      )
      

      );
    
    
  }
}
