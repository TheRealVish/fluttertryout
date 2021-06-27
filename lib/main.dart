import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('MicroVerse'),
        centerTitle: true,
      ),
      body: Center(
          child: Text('hellp')),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: _rollDice,
      ),
    ),

  ));

_rollDice(){
  print('hello');
}

