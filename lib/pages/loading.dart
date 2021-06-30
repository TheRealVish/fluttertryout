import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:myapp/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  // void getTime() async {
  //
  //   Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Europe/London'));
  //   Map data = jsonDecode(response.body);
  //   String datatime = data['utc_datetime'];
  //   String offset = data['utc_offset'].substring(1,3);
  //   print(datatime);
  //   print(offset);
  //
  //   DateTime now = DateTime.parse(datatime);
  //   now = now.add(Duration(hours: int.parse(offset)));
  //   print(now);
  // }

  String time = 'loading';

  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    print(instance.getTime());
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
    print('init function ran just now');


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Text(time),
      )
      // Text('loading screen'),
    );
  }
}
