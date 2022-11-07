//Date 07/11/2022 05:30 PM

//Flutter Learning Day 3.
//Topics covered is Colors and Fonts in App.

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('My First App'),
      centerTitle: true,
      backgroundColor: Colors.red[600]
    ),
    body: Center(
      child: Text('Hello World',
          style: TextStyle(
          fontSize: 40.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 3.0,
        fontFamily: 'RboretoRegular',
        color: Colors.lightBlue[300],
      ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {  },
      child: Text('Button'),
      backgroundColor: Colors.red[600],
    ),
  ),
));

