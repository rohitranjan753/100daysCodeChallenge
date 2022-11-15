//Date 14/11/2022 07:20 PM

//Flutter Learning Day 10.
//Topics covered is Expanded Widgets.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('My First App'),
          centerTitle: true,
          backgroundColor: Colors.red[600]
      ),

      body: Row(
        children: <Widget> [
          Expanded(
            flex: 1,
              child: Image.asset('assets/pic1.jpg')),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('One'),
            ),
          ),
          
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.yellow,
              child: Text('Two'),
            ),
          ),
          
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.lightBlue,
              child: Text('Three'),
            ),
          ),
        ],
      ),
    );
}}
