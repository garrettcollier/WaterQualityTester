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

  Widget rowFiller = const SizedBox(width: 48, height: 30);

  Widget columnFiller = Container(
    width: 100,
    height: 8,
  );

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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  rowFiller,
                  Container(
                    width: 190,
                    height: 25,
                    color: Colors.cyan,
                    alignment: Alignment.center,
                    child: Text(namesList[0]),
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
              columnFiller,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(namesList[1]),
                  Icon(
                    Icons.square,
                    color: colorList[1],
                  ),
                  Text(valueList[1].toString()),
                  Icon(Icons.flag, color: Colors.red)
                ],
              ),
              columnFiller,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(namesList[2]),
                  Icon(
                    Icons.square,
                    color: colorList[2],
                  ),
                  Text(valueList[2].toString()),
                  Icon(Icons.flag, color: Colors.red)
                ],
              ),
              columnFiller,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(namesList[3]),
                  Icon(
                    Icons.square,
                    color: colorList[3],
                  ),
                  Text(valueList[3].toString()),
                  Icon(Icons.flag, color: Colors.red)
                ],
              ),
              columnFiller,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(namesList[4]),
                  Icon(
                    Icons.square,
                    color: colorList[4],
                  ),
                  Text(valueList[4].toString()),
                  Icon(Icons.flag, color: Colors.red)
                ],
              ),
              columnFiller,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(namesList[5]),
                  Icon(
                    Icons.square,
                    color: colorList[5],
                  ),
                  Text(valueList[5].toString()),
                  Icon(Icons.flag, color: Colors.red)
                ],
              ),
              columnFiller,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(namesList[6]),
                  Icon(
                    Icons.square,
                    color: colorList[6],
                  ),
                  Text(valueList[6].toString()),
                  Icon(Icons.flag, color: Colors.red)
                ],
              ),
              columnFiller,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(namesList[7]),
                  Icon(
                    Icons.square,
                    color: colorList[7],
                  ),
                  Text(valueList[7].toString()),
                  Icon(Icons.flag, color: Colors.red)
                ],
              ),
              columnFiller,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(namesList[8]),
                  Icon(
                    Icons.square,
                    color: colorList[8],
                  ),
                  Text(valueList[8].toString()),
                  Icon(Icons.flag, color: Colors.red)
                ],
              ),
              columnFiller,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(namesList[9]),
                  Icon(
                    Icons.square,
                    color: colorList[9],
                  ),
                  Text(valueList[9].toString()),
                  Icon(Icons.flag, color: Colors.red)
                ],
              ),
              columnFiller,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(namesList[10]),
                  Icon(
                    Icons.square,
                    color: colorList[10],
                  ),
                  Text(valueList[10].toString()),
                  Icon(Icons.flag, color: Colors.red)
                ],
              ),
              columnFiller,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(namesList[11]),
                  Icon(
                    Icons.square,
                    color: colorList[11],
                  ),
                  Text(valueList[11].toString()),
                  Icon(Icons.flag, color: Colors.red)
                ],
              ),
              columnFiller,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(namesList[12]),
                  Icon(
                    Icons.square,
                    color: colorList[12],
                  ),
                  Text(valueList[12].toString()),
                  Icon(Icons.flag, color: Colors.red)
                ],
              ),
              columnFiller,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(namesList[13]),
                  Icon(
                    Icons.square,
                    color: colorList[13],
                  ),
                  Text(valueList[13].toString()),
                  Icon(Icons.flag, color: Colors.red)
                ],
              ),
              columnFiller,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(namesList[14]),
                  Icon(
                    Icons.square,
                    color: colorList[14],
                  ),
                  Text(valueList[14].toString()),
                  Icon(Icons.flag, color: Colors.red)
                ],
              ),
              columnFiller,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(namesList[15]),
                  Icon(
                    Icons.square,
                    color: colorList[15],
                  ),
                  Text(valueList[15].toString()),
                  Icon(Icons.flag, color: Colors.red)
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
