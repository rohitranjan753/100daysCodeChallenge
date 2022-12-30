//Date 30/12/2022 08:45 AM

//Flutter Learning Day 53.
//Topics covered is More Custom Font.


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
          title: Text('More Custom Font'),
          centerTitle: true,
          backgroundColor: Colors.red[600]
      ),
      body: Center(
        child: Column(
          children: [
                Text('Hello World',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 3.0,
                fontFamily: 'Acme',
                color: Colors.lightBlue[800],
              ),
            ),
              Text('Hello World',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3.0,
                  fontFamily: 'Aguafina',
                  color: Colors.green,
                ),
              ),
            Text('Hello World',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 3.0,
                fontFamily: 'Aldrich',
                color: Colors.purpleAccent,
              ),
            ),
            Text('Hello World',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 3.0,
                fontFamily: 'Alegreya',
                color: Colors.amber,
              ),
            ),
            Text('Hello World',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 3.0,
                fontFamily: 'Badscript',
                color: Colors.deepOrange,
              ),
            ),
          ],
    ),
      )
    );
  }
}