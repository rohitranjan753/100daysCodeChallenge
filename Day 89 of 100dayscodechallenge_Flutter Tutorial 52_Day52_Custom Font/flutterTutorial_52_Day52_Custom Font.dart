//Date 29/12/2022 11:11 PM

//Flutter Learning Day 52.
//Topics covered is Custom Font.

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Custom Font'),
          centerTitle: true,
          backgroundColor: Colors.red[600]
      ),
      body: Center(
          child: Text('Hello World',
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 3.0,
          fontFamily: 'Acme',
          color: Colors.lightBlue[800],
        ),
      ),
    ));
  }
}