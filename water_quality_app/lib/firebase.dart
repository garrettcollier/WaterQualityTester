import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geolocator/geolocator.dart';

//initialize an instance of cloud firestore
final db = FirebaseFirestore.instance; //instance of the database
String userID = "";
//var docRefLoc = "";
var pHDoc;
var zincDoc;
var totChlDoc;
var totAlkDoc;
var sulfateDoc;
var NaClDoc;
var nitriteDoc;
var nitrateDoc;
var mangDoc;
var leadDoc;
var hydSulDoc;
var freeChlDoc;
var flouDoc;
var copperDoc;

//init database collections
final pHCollection = db.collection('pH');
final zincCollection = db.collection('Zinc');
final totalChlorineCollection = db.collection('TotalChlorine');
final totalAlkalineCollection = db.collection('TotalAlkalinity');
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
  Future addMeasurement(String collection, double data) async {
    final docRef =
        db.collection(collection).doc(); //create the doc with auto-generated ID
    docRef.set(
        {"userID": userID, "measurement": data, "timestamp": DateTime.now()});
    //set the data in the doc using docRef.
    //update the class variables for the document id in each collection
    if (collection == "pH") {
      pHDoc = docRef.id;
    }
    if (collection == "Zinc") {
      zincDoc = docRef.id;
    }
    if (collection == "TotalChlorine") {
      totChlDoc = docRef.id;
    }
    if (collection == "TotalAlkalinity") {
      totAlkDoc = docRef.id;
    }
    if (collection == "Sulfate") {
      sulfateDoc = docRef.id;
    }
    if (collection == "SodiumChloride") {
      NaClDoc = docRef.id;
    }
    if (collection == "Nitrite") {
      nitriteDoc = docRef.id;
    }
    if (collection == "Nitrate") {
      nitrateDoc = docRef.id;
    }
    if (collection == "Manganese") {
      mangDoc = docRef.id;
    }
    if (collection == "Lead") {
      leadDoc = docRef.id;
    }
    if (collection == "HydrogenSulfide") {
      hydSulDoc = docRef.id;
    }
    if (collection == "FreeChlorine") {
      freeChlDoc = docRef.id;
    }
    if (collection == "Flouride") {
      flouDoc = docRef.id;
    }
    if (collection == "Copper") {
      copperDoc = docRef.id;
    }
  }

  Future addLocation(
      String collection, GeoPoint location, String docRef) async {
    db
        .collection(collection)
        .doc(docRef)
        .set({"location": location}, SetOptions(merge: true));
  }

  Future addToCollections(
      //mass adds docs to collections with data
      double ph,
      double zinc,
      double totcl,
      double totalk,
      double sulfate,
      double NaCl,
      double nitrite,
      double nitrate,
      double manganese,
      double lead,
      double hydrogensul,
      double freechl,
      double flouride,
      double copper) async {
    addMeasurement("pH", ph);
    addMeasurement("Zinc", zinc);
    addMeasurement("TotalChlorine", totcl);
    addMeasurement("TotalAlkalinity", totalk);
    addMeasurement("Sulfate", sulfate);
    addMeasurement("SodiumChloride", NaCl);
    addMeasurement("Nitrite", nitrite);
    addMeasurement("Nitrate", nitrate);
    addMeasurement("Manganese", manganese);
    addMeasurement("Lead", lead);
    addMeasurement("HydrogenSulfide", hydrogensul);
    addMeasurement("FreeChlorine", freechl);
    addMeasurement("Flouride", flouride);
    addMeasurement("Copper", copper);
  }

  Future addLocationToCollections(GeoPoint location) async {
    addLocation("pH", location, pHDoc);
    addLocation("Zinc", location, zincDoc);
    addLocation("TotalChlorine", location, totChlDoc);
    addLocation("TotalAlkalinity", location, totAlkDoc);
    addLocation("Sulfate", location, sulfateDoc);
    addLocation("SodiumChloride", location, NaClDoc);
    addLocation("Nitrite", location, nitriteDoc);
    addLocation("Nitrate", location, nitrateDoc);
    addLocation("Manganese", location, mangDoc);
    addLocation("Lead", location, leadDoc);
    addLocation("HydrogenSulfide", location, hydSulDoc);
    addLocation("FreeChlorine", location, freeChlDoc);
    addLocation("Flouride", location, flouDoc);
    addLocation("Copper", location, copperDoc);
  }
}
