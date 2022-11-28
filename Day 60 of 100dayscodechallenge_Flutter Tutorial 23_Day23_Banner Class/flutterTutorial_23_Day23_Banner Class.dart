//Date 28/11/2022 7:15 PM

//Flutter Learning Day 23.
//Topics covered is Banner Class

import 'package:flutter/material.dart';

//Material design library
void main() {
  runApp(
    //widget tree starts here
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(''),
          toolbarHeight: 0.001,
          backgroundColor: Colors.amberAccent[400],
          centerTitle: true,
        ), //AppBar
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            child: ClipRect(
              /** Banner Widget **/
              child: Banner(
                message: "20% off !!",
                location: BannerLocation.bottomStart,
                color: Colors.red,
                child: Container(
                  color: Colors.cyan[100],
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/flipkart.jpg',height: 150,width: 500,), //Image.network
                        const SizedBox(height: 10),
                        const Text(
                          'Flipkat',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 40,
                              fontWeight: FontWeight.bold), //TextStyle
                        ),
                        const SizedBox(
                          height: 5,
                        ), //SizedBox
                        const Text(
                          'Big Billion Day',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold), //TextStyle
                        ), //Text
                        const SizedBox(height: 20),

                        // RaiseButton is deprecated and should not be used. Use ElevatedButton instead.

                        // RaisedButton(
                        // color: Colors.greenAccent[400],
                        // onPressed: () {},
                        // child: const Text('Register'),
                        // ) //RaisedButton
                      ], //<Widget>[]
                    ), //Column
                  ), //Padding
                ), //Container
              ), //Banner
            ), //ClipRect
          ), //container
        ), //Center
      ), //Scaffold
    ), //MaterialApp
  );
}