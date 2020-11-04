import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String time; 
  String flag; // url to flag icon
  String url; // url to the time zone (location) i.e., api end points
  
  WorldTime({this.location, this.flag, this.url}); 
  
  Future getTime() async {
    try{
      Response response  = await get('http://worldtimeapi.org/timezone/Europe/Berlin');
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      //print(datetime);
      //print(offset);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      time = now.toString();
    }
    catch (e){
      time = 'could not fetch time data';
    }
  }
}