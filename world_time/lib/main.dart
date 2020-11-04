import 'package:flutter/material.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading_screen.dart';
import 'package:world_time/pages/geo_location.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute : '/home',
      routes: {
        '/' : (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => GeoLocation(),
      },
    )
  );
}

