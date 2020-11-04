import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'loading...',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.blueGrey,
          ),
        ),
      )
    );
  }
}