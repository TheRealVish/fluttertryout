import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: Home(),
  ));

_rollDice(){
  print('hello');
}

_goodBot(){
  print('clicked here');
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MicroVerse'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 9,
              child: Image.asset('assets/dog.jpg')
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
            padding: EdgeInsets.all(30),
            color: Colors.pink[200],
            child: Text('2'),
          ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.amber,
              child: Text('3'),
            ),
          )
        ],
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     Row(
      //       children: [
      //         Text('hello'),
      //         Text('what')
      //       ],
      //
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(30),
      //       color: Colors.pink,
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('two'),
      //       ),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(20),
      //       color: Colors.cyan,
      //       child: Text('one'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(40),
      //       color: Colors.amber,
      //       child: Text('three'),
      //     ),
      //   ],
      // ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text('hello world'),
      //     FlatButton(onPressed: _goodBot,
      //         color: Colors.amber,
      //         child: Text('Click'),
      //         ),
      //     Container(
      //       color: Colors.cyan,
      //       padding: EdgeInsets.all(30),
      //       child: Text('inside'),
      //     )
      //   ],
      //
      // ),
      // body: Container(
      //   padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
      //   color: Colors.grey[900],
      //   // child: Text('hello'),
      // ),
      // body: Center(

          // child: Text(
          //   'hello first reload',
          //   style: TextStyle(
          //       fontSize: 50,
          //       fontWeight: FontWeight.bold,
          //       letterSpacing: 2,
          //       color: Colors.blue[600],
          //       fontFamily: 'BigShouldersStencilDisplay'
          //   ),
          // )
          // child: Image(
          //   // image: NetworkImage('https://images.freeimages.com/images/large-previews/6a5/dragon-fly-on-the-river-1394126.jpg'),
          //   image: AssetImage('assets/dog.jpg'),
          // ),
          // child: Image.asset('assets/lamp.jpg'),
          // child: Image.network('https://images.freeimages.com/images/large-previews/6a5/dragon-fly-on-the-river-1394126.jpg'),
        // child: Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.lightBlue,
        //   size: 50
        // ),
        // child: RaisedButton.icon(
        //   onPressed: _goodBot,
        //   icon: Icon(
        //     Icons.mail,
        //   ),
        //   label: Text(
        //     'Click Me'
        //   ),
        //   color: Colors.amber,
        // ),
        // child: IconButton(
        //   onPressed: (){},
        //   icon: Icon(
        //     Icons.access_time_rounded ,
        //     size: 50,
        //   ),
        // )
      // ),
      floatingActionButton: FloatingActionButton(
        child: Text('+'),
        backgroundColor: Colors.red[400],
        onPressed: _goodBot,
      ),
    );
  }
}
