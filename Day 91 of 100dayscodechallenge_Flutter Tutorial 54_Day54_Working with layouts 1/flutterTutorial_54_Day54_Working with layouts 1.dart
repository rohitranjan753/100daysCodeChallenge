//Date 31/12/2022 09:10 AM

//Flutter Learning Day 54.
//Topics covered is Working with layouts 1.

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
            title: Text('Working with layouts 1'),
            centerTitle: true,
            backgroundColor: Colors.red[600]
        ),
        body: SafeArea(
          // Container implementation
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.green,
          ),
        )
    );
  }
}