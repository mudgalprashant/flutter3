import 'package:flutter/material.dart';

class GeoLocation extends StatefulWidget {
  @override
  _GeoLocationState createState() => _GeoLocationState();
}

class _GeoLocationState extends State<GeoLocation> {

  int counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose a location"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: RaisedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text("Count is $counter"),
      ),
    );
  }
}