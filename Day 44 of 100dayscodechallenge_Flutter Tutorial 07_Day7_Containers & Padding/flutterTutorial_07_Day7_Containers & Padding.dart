//Date 10/11/2022 07:20 PM

//Flutter Learning Day 7.
//Topics covered is Containers & Padding.


import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('My First App'),
          centerTitle: true,
          backgroundColor: Colors.red[600]
      ),

      body: Container(
        // padding: EdgeInsets.all(20.0),
        // padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
        margin: EdgeInsets.all(30.0),
        color: Colors.amber[300],
        child: Text('Hello World'),
      ),

      
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Text('Button'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}