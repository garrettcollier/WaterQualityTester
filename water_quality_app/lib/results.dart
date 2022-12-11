import 'dart:io';

import 'package:flutter/material.dart';
import 'package:water_quality_app/image_with_rgb.dart';
import 'package:water_quality_app/firebase.dart' as firebase;

class ResultsPage extends StatelessWidget {
  final File image;
  List<String> namesList = ["Total Alkalinity", "Sodium Chloride", "Fluoride", "Zinc", "Sulfate", "Nitrite", "Nitrate", "Mercury", "Total Chlorine", "Manganese", "Lead", "Copper", "Iron", "Hydrogen Sulfide", "Hardness", "pH"]; 
  //RGB(image: image),
  List<Color> colorList = [Colors.red, Colors.green, Colors.blue, Colors.black, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red, Colors.red];
  List<double> valueList = [1.2, 2.2, 2.3, 1.2, 1.1, 3.5, 3.3, 4.5, 6.5, 7.0, 1.2, 3.1, 3.4, 1.1, 2.8, 9.0];

  ResultsPage({super.key, required this.image});

  Widget rowFiller = Container(
      width: 48,
      height: 25);

  Widget columnFiller = Container(
      width: 50,
      height: 5,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              rowFiller,
              Container(
                width: 190,
                height: 20,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: Text(
                  namesList[0]
                  ),
              ),
              rowFiller,
              Icon( Icons.square, 
                color: colorList[0],),
              rowFiller,
              Text(
                valueList[0].toString()
              ), 
              rowFiller, 
              Icon( Icons.flag,
                color: Colors.red)
                ],),
          columnFiller,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              rowFiller,
              Container(
                width: 190,
                height: 20,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: Text(
                  namesList[1]
                  ),
              ),
              rowFiller,
              Icon( Icons.square, 
                color: colorList[1],),
              rowFiller,
              Text(
                valueList[1].toString()
              ),
              rowFiller,
              Icon( Icons.flag,
                color: Colors.red)  
                ],),
          columnFiller,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              rowFiller,
              Container(
                width: 190,
                height: 20,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: Text(
                  namesList[2]
                  ),
              ),
              rowFiller,
              Icon( Icons.square, 
                color: colorList[2],),
              rowFiller,
              Text(
                valueList[2].toString()
              ),
              rowFiller,
              Icon( Icons.flag,
                color: Colors.red)  
                ],),
          columnFiller,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              rowFiller,
              Container(
                width: 190,
                height: 20,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: Text(
                  namesList[3]
                  ),
              ),
              rowFiller,
              Icon( Icons.square, 
                color: colorList[3],),
              rowFiller,
              Text(
                valueList[3].toString()
              ),
              rowFiller,
              Icon( Icons.flag,
                color: Colors.red)  
                ],),
          columnFiller,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              rowFiller,
              Container(
                width: 190,
                height: 20,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: Text(
                  namesList[4]
                  ),
              ),
              rowFiller,
              Icon( Icons.square, 
                color: colorList[4],),
              rowFiller,
              Text(
                valueList[4].toString()
              ),
              rowFiller,
              Icon( Icons.flag,
                color: Colors.red)  
                ],),
          columnFiller,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              rowFiller,
              Container(
                width: 190,
                height: 20,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: Text(
                  namesList[5]
                  ),
              ),
              rowFiller,
              Icon( Icons.square, 
                color: colorList[5],),
              rowFiller,
              Text(
                valueList[5].toString()
              ),
              rowFiller,
              Icon( Icons.flag,
                color: Colors.red)  
                ],),
          columnFiller,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              rowFiller,
              Container(
                width: 190,
                height: 20,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: Text(
                  namesList[6]
                  ),
              ),
              rowFiller,
              Icon( Icons.square, 
                color: colorList[6],),
              rowFiller,
              Text(
                valueList[6].toString()
              ),
              rowFiller,
              Icon( Icons.flag,
                color: Colors.red)  
                ],),
          columnFiller,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              rowFiller,
              Container(
                width: 190,
                height: 20,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: Text(
                  namesList[7]
                  ),
              ),
              rowFiller,
              Icon( Icons.square, 
                color: colorList[7],),
              rowFiller,
              Text(
                valueList[7].toString()
              ), 
              rowFiller,
              Icon( Icons.flag,
                color: Colors.red) 
                ],),
          columnFiller,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              rowFiller,
              Container(
                width: 190,
                height: 20,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: Text(
                  namesList[8]
                  ),
              ),
              rowFiller,
              Icon( Icons.square, 
                color: colorList[8],),
              rowFiller,
              Text(
                valueList[8].toString()
              ),
              rowFiller,
              Icon( Icons.flag,
                color: Colors.red)  
                ],),
          columnFiller,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              rowFiller,
              Container(
                width: 190,
                height: 20,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: Text(
                  namesList[9]
                  ),
              ),
              rowFiller,
              Icon( Icons.square, 
                color: colorList[9],),
              rowFiller,
              Text(
                valueList[9].toString()
              ),
              rowFiller,
              Icon( Icons.flag,
                color: Colors.red)  
                ],),
          columnFiller,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              rowFiller,
              Container(
                width: 190,
                height: 20,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: Text(
                  namesList[10]
                  ),
              ),
              rowFiller,
              Icon( Icons.square, 
                color: colorList[10],),
              rowFiller,
              Text(
                valueList[10].toString()
              ),
              rowFiller,
              Icon( Icons.flag,
                color: Colors.red)  
                ],),
          columnFiller,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              rowFiller,
              Container(
                width: 190,
                height: 20,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: Text(
                  namesList[11]
                  ),
              ),
              rowFiller,
              Icon( Icons.square, 
                color: colorList[11],),
              rowFiller,
              Text(
                valueList[11].toString()
              ),
              rowFiller,
              Icon( Icons.flag,
                color: Colors.red)  
                ],),
          columnFiller,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              rowFiller,
              Container(
                width: 190,
                height: 20,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: Text(
                  namesList[12]
                  ),
              ),
              rowFiller,
              Icon( Icons.square, 
                color: colorList[12],),
              rowFiller,
              Text(
                valueList[12].toString()
              ),
              rowFiller,
              Icon( Icons.flag,
                color: Colors.red)  
                ],),
          columnFiller,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              rowFiller,
              Container(
                width: 190,
                height: 20,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: Text(
                  namesList[13]
                  ),
              ),
              rowFiller,
              Icon( Icons.square, 
                color: colorList[13],),
              rowFiller,
              Text(
                valueList[13].toString()
              ),
              rowFiller,
              Icon( Icons.flag,
                color: Colors.red)  
                ],),
          columnFiller,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              rowFiller,
              Container(
                width: 190,
                height: 20,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: Text(
                  namesList[14]
                  ),
              ),
              rowFiller,
              Icon( Icons.square, 
                color: colorList[14],),
              rowFiller,
              Text(
                valueList[14].toString()
              ),
              rowFiller,
              Icon( Icons.flag,
                color: Colors.red)
                ],),
          columnFiller,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              rowFiller,
              Container(
                width: 190,
                height: 20,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: Text(
                  namesList[15]
                  ),
              ),
              rowFiller,
                Icon( Icons.square, 
                color: colorList[15],),
              rowFiller,
              Text(
                valueList[15].toString()
              ),
              rowFiller,
              Icon( Icons.flag,
                color: Colors.red)  
                ],),
      ]
      )
      

      );
    
    
  }
}
