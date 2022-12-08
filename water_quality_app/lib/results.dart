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
        //      Text(
        //        colorList[index].toString()
        //        )],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 1]
                ),
         //     Text(
         //       colorList[index += 1].toString()
         //       )],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 2]
                ),
         //     Text(
         //       colorList[index += 2].toString()
         //       )],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 3]
                ),
         //     Text(
         //       colorList[index += 3].toString()
         //       )],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 4]
                ),
         //     Text(
         //       colorList[index += 4].toString()
         //       )],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 5]
                ),
       //       Text(
        //        colorList[index += 5].toString()
         //       )],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 6]
                ),
         //     Text(
          //      colorList[index += 6].toString()
          //      )],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 7]
                ),
         //     Text(
         //       colorList[index += 7].toString()
         //       )],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 8]
                ),
         //     Text(
         //       colorList[index += 8].toString()
         //       )],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 9]
                ),
         //     Text(
         //       colorList[index += 9].toString()
         //       )],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 10]
                ),
         //     Text(
         //       colorList[index += 10].toString()
         //       )],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 11]
                ),
        //      Text(
        //        colorList[index += 11].toString()
        //        )],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 12]
                ),
       //      Text(
         //       colorList[index += 12].toString()
         //       )],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 13]
                ),
       //       Text(
       //         colorList[index += 13].toString()
        //        )],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index ]
                ),
       //       Text(
       //         colorList[index ].toString()
        //        )],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                namesList[index += 1]
                ),
           //   Text(
           //     colorList[index += 1].toString()
           //     )],),
      ]
      )
      

      );
    
    
  }
}
