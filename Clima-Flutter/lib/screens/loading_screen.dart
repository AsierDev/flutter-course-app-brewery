import 'package:flutter/material.dart';
import '../services/location.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(
        'latitude =>  ${location.latitude}, longitude => ${location.longitude}');
  }

  void getData() async {
    http.Response response = await http.get(
        'http://samples.openweathermap.org/data/2.5/weather?lat=41.38879&lon=2.15899&appid=6fe6cdd20b7c721a7788c0222ad8b638');

    print(' response => ${response.statusCode}');
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
