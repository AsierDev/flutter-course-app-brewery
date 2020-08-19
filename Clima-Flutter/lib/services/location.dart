import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      latitude = 41.38879;
      longitude = 2.15899;
      print(e);
    }
  }
}
