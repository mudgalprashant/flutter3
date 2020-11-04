import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time;
  
  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    setState(() {
      time = instance.time;
    });
  }
  

  @override
  void initState(){
    super.initState();
    setupWorldTime();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
              time,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blueGrey,
                decoration: TextDecoration.none,
              ),
            ),
          FlatButton.icon(
              onPressed: (){
                Navigator.pushNamed(context, '/home');
              }, 
              icon: Icon(Icons.edit_location),
              label: Text("Enter home"),
              color: Colors.white,
            ),
        ],
      )
    );
  }
}