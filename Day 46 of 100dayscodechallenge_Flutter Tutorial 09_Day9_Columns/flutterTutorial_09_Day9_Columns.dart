//Date 13/11/2022 04:10 PM

//Flutter Learning Day 09.
//Topics covered is Columns.

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

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Row(
            children: <Widget>[
              Text('Hello'),
              Text('World'),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: Text('One'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.yellow,
            child: Text('Two'),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.lightBlue,
            child: Text('Three'),
          ),
        ],
      ),
    );
}}
