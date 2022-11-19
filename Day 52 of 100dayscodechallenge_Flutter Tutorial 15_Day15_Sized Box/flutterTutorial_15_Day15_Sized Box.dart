//Date 19/11/2022 11:30 PM

//Flutter Learning Day 15.
//Topics covered is Sized Box.

import 'package:flutter/material.dart';

//Importing material design library
void main() {
  runApp(
    //Our app widget tree starts from here
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Size Box'),
          centerTitle: true,
          backgroundColor: Colors.red[400],
        ), //AppBar
        body: Center(
          //SizedBox Widget
          child: SizedBox(
            width: 200.0,
            height: 100.0,
            child: Card(
              color: Colors.blueGrey[600],
              child: Center(
                child: Text(
                  'Hello World',
                  style: TextStyle(color: Colors.white),
                ), //Text
              ), //Center
            ), //Card
          ), //SizedBox
        ), //Center
      ), //Scaffold
    ), //MaterialApp
  );
}
