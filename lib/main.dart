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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/dog.jpg'),
              radius: 40,
            ),
          ),
          Divider(
            height: 60,
            color: Colors.grey[800],
          ),
          Text(
            'Name',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Chun-Li',
            style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Current Ninja Level',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '8',
            style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10,),
              Text(
                'testing@gmail.com',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18,
                  letterSpacing: 1
                ),

              ),
            ],

          ),
        ],
      ),
    )
    );
  }
}


