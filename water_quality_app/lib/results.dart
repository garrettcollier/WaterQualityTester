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
                namesList[index += 1]
                ),
              Icon( Icons.square, 
                color: colorList[index += 1],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 2]
                ),
              Icon( Icons.square, 
                color: colorList[index += 2],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 3]
                ),
              Icon( Icons.square, 
                color: colorList[index += 3],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 4]
                ),
              Icon( Icons.square, 
                color: colorList[index += 4],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 5]
                ),
              Icon( Icons.square, 
                color: colorList[index += 5],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 6]
                ),
              Icon( Icons.square, 
                color: colorList[index += 6],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 7]
                ),
              Icon( Icons.square, 
                color: colorList[index += 7],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 8]
                ),
              Icon( Icons.square, 
                color: colorList[index += 8],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 9]
                ),
              Icon( Icons.square, 
                color: colorList[index += 9],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 10]
                ),
              Icon( Icons.square, 
                color: colorList[index += 10],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 11]
                ),
              Icon( Icons.square, 
                color: colorList[index += 11],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 12]
                ),
              Icon( Icons.square, 
                color: colorList[index += 12],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 3]
                ),
              Icon( Icons.square, 
                color: colorList[index += 3],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 0]
                ),
              Icon( Icons.square, 
                color: colorList[index += 0],)
                ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 0]
                ),
                Icon( Icons.square, 
                color: colorList[index += 0],)
                ],),
      ]
      )
      

      );
    
    
  }
}
