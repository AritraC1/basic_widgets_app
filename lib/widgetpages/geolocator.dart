import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class GeoLocatorWidget extends StatefulWidget {
  const GeoLocatorWidget({super.key});

  @override
  State<GeoLocatorWidget> createState() => _GeoLocatorWidgetState();
}

class _GeoLocatorWidgetState extends State<GeoLocatorWidget> {
  Position? position;

  fetchPos() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      Fluttertoast.showToast(msg: 'Location service is disabled');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: 'Permission Denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Fluttertoast.showToast(msg: 'Permission denied forever');
    }

    Position currentposition = await Geolocator.getCurrentPosition();

    setState(() {
      position = currentposition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LOCATION WIDGET',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(position == null ? 'Location' : position.toString(),
                style: const TextStyle(fontSize: 20)),
            ElevatedButton(
                onPressed: () {
                  fetchPos();
                },
                child: const Text(
                  'Get Location',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
