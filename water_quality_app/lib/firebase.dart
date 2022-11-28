import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:water_quality_app/front_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

//initialize an instance of cloud firestore
FirebaseFirestore db = FirebaseFirestore.instance;

//init database collections
final pHCollection = FirebaseFirestore.instance.collection('pH');
final ZincCollection = FirebaseFirestore.instance.collection('Zinc');
final TotalChlorineCollection = FirebaseFirestore.instance.collection('TotalChlorine');
final TotalAlkalineCollection = FirebaseFirestore.instance.collection('TotalAlkaline');
final SulfateCollection = FirebaseFirestore.instance.collection('Sulfate');
final SodiumChlorideCollection = FirebaseFirestore.instance.collection('SodiumChloride');
final NitriteCollection = FirebaseFirestore.instance.collection('Nitrite');
final NitrateCollection = FirebaseFirestore.instance.collection('Nitrate');
final ManganeseCollection = FirebaseFirestore.instance.collection('Manganese');
final LeadCollection = FirebaseFirestore.instance.collection('Lead');
final HydrogenSulfideCollection = FirebaseFirestore.instance.collection('HydrogenSulfide');
final FreeChlorineCollection = FirebaseFirestore.instance.collection('FreeChlorine');
final FlourideCollection = FirebaseFirestore.instance.collection('Flouride');
final CopperCollection = FirebaseFirestore.instance.collection('Copper');