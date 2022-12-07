//Date 07/12/2022 07:02 PM

//Flutter Learning Day 32.
//Topics covered is Tooltip.

import 'package:flutter/material.dart';

void main() {runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Tooltip"),
      ),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:<Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Tooltip(
                  waitDuration: Duration(seconds: 1),
                  showDuration: Duration(seconds: 2),
                  padding: EdgeInsets.all(5),
                  height: 35,
                  textStyle: TextStyle(
                      fontSize: 15, color: Colors.white, fontWeight: FontWeight.normal),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: Colors.green),
                  message: 'My Account',
                  child: MaterialButton(
                    onPressed: () {  },
                    child: Icon(
                      Icons.add_a_photo_rounded,
                      size: 100,
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Tooltip(
                  message: 'My Account',
                  child: MaterialButton(
                    onPressed: () {  },
                    child: Icon(
                      Icons.account_box,
                      size: 100,
                    ),
                  )
              ),
            )
          ]
      ),
    );
  }
}