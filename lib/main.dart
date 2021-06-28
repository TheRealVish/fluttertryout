import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: Home(),
  ));


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,

      ),
    body: Padding(
      padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
      child: Column(
        children: [

        ],
      ),
    )
    );
  }
}


