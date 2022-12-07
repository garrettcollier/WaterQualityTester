import 'package:cloud_firestore/cloud_firestore.dart';

//initialize an instance of cloud firestore
final db = FirebaseFirestore.instance; //instance of the database
String userID = "";

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
  static Future addMeasurement(String collection, int data) async {
    await db.collection(collection).add(
        {"userID": userID, 
        "measurement": data, 
        "timestamp": DateTime.now()});
  }
}
