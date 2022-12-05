import 'package:flutter/material.dart';

// package for map
import 'package:google_maps_flutter/google_maps_flutter.dart';

// List of Markers Added on Google Map
Set<Marker> markerList = {
  const Marker(
      markerId: MarkerId('1'),
      position: LatLng(34.42796133580664, -92.285749655962),
      infoWindow: InfoWindow(
          title: 'Location 1', snippet: 'Information on water here')),
  const Marker(
      markerId: MarkerId('2'),
      position: LatLng(34.42796133580664, -92.885749655962),
      infoWindow: InfoWindow(
          title: 'Location 2', snippet: 'Information on water here')),
};

class MapPage extends StatefulWidget {
  MapPage({super.key, required this.fromNavHome});

  // check if user comes from the
  // bottom nav or from homepage button
  bool fromNavHome;

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController mapController;

  // Little Rock, AR - longitude and latitude - starting location
  final LatLng _center = const LatLng(34.74410314194924, -92.2840319378177);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.fromNavHome == false ? AppBar() : null,
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 10.0,
        ),
        markers: markerList,
        myLocationEnabled: true,
        compassEnabled: true,
      ),
    );
  }
}
