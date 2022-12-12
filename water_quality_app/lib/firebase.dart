import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geolocator/geolocator.dart';

//initialize an instance of cloud firestore
final db = FirebaseFirestore.instance; //instance of the database
String userID = "";
var docRefLoc = "";

//init database collections
final pHCollection = db.collection('pH');
final zincCollection = db.collection('Zinc');
final totalChlorineCollection = db.collection('TotalChlorine');
final totalAlkalineCollection = db.collection('TotalAlkaline');
final sulfateCollection = db.collection('Sulfate');
final sodiumChlorideCollection = db.collection('SodiumChloride');
final nitriteCollection = db.collection('Nitrite');
final nitrateCollection = db.collection('Nitrate');
final manganeseCollection = db.collection('Manganese');
final leadCollection = db.collection('Lead');
final hydrogenSulfideCollection = db.collection('HydrogenSulfide');
final freeChlorineCollection = db.collection('FreeChlorine');
final flourideCollection = db.collection('Flouride');
final copperCollection = db.collection('Copper');

class Firestore {
  //a class for firestore functions
  // addMeasurement takes in the collection (name in Firestore) and the measurement
  // for the standard. Creates a new document adds fields with the userID, measurement,
  //and timestamp
  Future addMeasurement(String collection, int data) async {
    final docRef =
        db.collection(collection).doc(); //create the doc with auto-generated ID
    docRef.set(
        {"userID": userID, "measurement": data, "timestamp": DateTime.now()});
    //set the data in the doc using docRef.
    docRefLoc = docRef
        .id; //update the class variable docRefLoc to be the doc ID to access in location
    print(docRefLoc);
  }

  Future addLocation(String collection, GeoPoint location) async {
    db
        .collection(collection)
        .doc(docRefLoc)
        .set({"location": location}, SetOptions(merge: true));
  }

  Future addToCollections( //mass adds docs to collections with data
      int ph,
      int zinc,
      int totcl,
      int totalk,
      int sulfate,
      int NaCl,
      int nitrite,
      int nitrate,
      int manganese,
      int lead,
      int hydrogensul,
      int freechl,
      int flouride,
      int copper) async {
    addMeasurement("ph", ph);
    addMeasurement("Zinc", zinc);
    addMeasurement("TotalChlorine", totcl);
    addMeasurement("Sulfate", sulfate);
    addMeasurement("SociumChloride", NaCl);
    addMeasurement("Nitrite", nitrite);
    addMeasurement("Nitrate", nitrate);
    addMeasurement("Manganese", manganese);
    addMeasurement("Lead", lead);
    addMeasurement("HydrogenSulfide", hydrogensul);
    addMeasurement("FreeChlorine", freechl);
    addMeasurement("Flouride", flouride);
    addMeasurement("Copper", copper);
  }

  Future addLocationToCollections(
      GeoPoint location) async {
    addLocation("ph", location);
    addLocation("Zinc", location);
    addLocation("TotalChlorine", location);
    addLocation("Sulfate", location);
    addLocation("SociumChloride", location);
    addLocation("Nitrite", location);
    addLocation("Nitrate", location);
    addLocation("Manganese", location);
    addLocation("Lead", location);
    addLocation("HydrogenSulfide", location);
    addLocation("FreeChlorine", location);
    addLocation("Flouride", location);
    addLocation("Copper", location);
  }
}
