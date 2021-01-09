import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapTab extends StatefulWidget {
  @override
  _MapTabState createState() => _MapTabState();
}

class _MapTabState extends State<MapTab> {
  Completer<GoogleMapController> _controller = Completer();
  LatLng _center;

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  Future<LatLng> getlocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      print(permission == LocationPermission.always ||
          permission == LocationPermission.whileInUse);
      if (permission == LocationPermission.always ||
          permission == LocationPermission.whileInUse) {
        Position position = await Geolocator.getCurrentPosition();
        return LatLng(position.latitude, position.longitude);
      }
    }else{
      Position position = await Geolocator.getCurrentPosition();
      return LatLng(position.latitude, position.longitude);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snap) {
        if (snap.hasData){
          return GoogleMap(
            markers: {Marker(
              markerId: MarkerId("Position"),
              position: snap.data,
              icon: BitmapDescriptor.defaultMarker
            )},
              initialCameraPosition: CameraPosition(
                target: snap.data,
                zoom: 18.0,
              ));
        }
        return  Container(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
      future: getlocation(),
    );
  }
}
