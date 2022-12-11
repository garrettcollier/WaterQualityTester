import 'dart:io';

import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:water_quality_app/begin.dart';
import 'package:water_quality_app/home.dart';
import 'package:water_quality_app/map.dart';
import 'package:flutter/material.dart';

import 'package:water_quality_app/firebase.dart' as firebase;

class ResultsPage extends StatelessWidget {
  final File image;
  List<String> namesList = [
    "Total Alkalinity",
    "Sodium Chloride",
    "Fluoride",
    "Zinc",
    "Sulfate",
    "Nitrite",
    "Nitrate",
    "Mercury",
    "Total Chlorine",
    "Manganese",
    "Lead",
    "Copper",
    "Iron",
    "Hydrogen Sulfide",
    "Hardness",
    "pH"
  ];
  //RGB(image: image),
  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.black,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red
  ];
  List<double> valueList = [
    1.2,
    2.2,
    2.3,
    1.2,
    1.1,
    3.5,
    3.3,
    4.5,
    6.5,
    7.0,
    1.2,
    3.1,
    3.4,
    1.1,
    2.8,
    9.0
  ];

  ResultsPage({super.key, required this.image});

  Widget rowFiller = Container(
      width: 48,
      height: 25);

  Widget columnFiller = Container(
      width: 50,
      height: 5,);

  // style the elevated buttons
  final ButtonStyle styleButton = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20), backgroundColor: Colors.teal);

  // created method for getting user current location
  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) async {
      await Geolocator.requestPermission();
      print("ERROR $error");
    });
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  rowFiller,
                  Icon(
                    Icons.square,
                    color: colorList[0],
                  ),
                  rowFiller,
                  Text(valueList[0].toString()),
                  rowFiller,
                  Icon(Icons.flag, color: Colors.red)
                ],
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              ElevatedButton(
                style: styleButton,
                child: const Text("Plot your Location"),
                onPressed: () async {
                  getUserCurrentLocation().then(
                    (value) async {
                      print("${value.latitude} ${value.longitude}");

                      // marker added for current users location
                      // MARKER LIST CURRENTLY RESETS WHEN APP IS CLOSED
                      markerList.add(
                        Marker(
                          markerId:
                              MarkerId((markerList.length + 1).toString()),
                          position: LatLng(value.latitude, value.longitude),
                          infoWindow: const InfoWindow(
                            title: 'My Current Location',
                          ),
                        ),
                      );
                    },
                  );
                  // go to home page after plot
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                style: styleButton,
                child: const Text("Return to Home Page"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Front(),
                    ),
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
