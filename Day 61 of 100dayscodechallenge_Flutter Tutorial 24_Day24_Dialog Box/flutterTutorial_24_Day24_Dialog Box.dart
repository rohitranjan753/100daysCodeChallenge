//Date 29/11/2022 01:05 PM

//Flutter Learning Day 24.
//Topics covered is Dialog Box


import 'package:flutter/material.dart';

//Material design library
void main() {
  runApp(
    //widget tree starts here
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent[100],
        appBar: AppBar(
          title: const Text(''),
          toolbarHeight: 0.001,
          backgroundColor: Colors.amberAccent[400],
          centerTitle: true,
        ), //AppBar
        body: Center(
          child: AlertDialog(
              title: Text('Welcome'),		 // To display the title it is optional
              content: Text('Do you want to Continue'), // Message which will be pop up on the screen
              // Action widget which will provide the user to acknowledge the choice
              actions: [
                MaterialButton(					 // FlatButton widget is used to make a text to work like a button
                  textColor: Colors.black,
                  onPressed: () {},			 // function used to perform after pressing the button
                  child: Text('CANCEL'),
                ),
                MaterialButton(
                  textColor: Colors.black,
                  onPressed: () {},
                  child: Text('ACCEPT'),
                ),
              ],
            ),

          //container
        ), //Center
      ), //Scaffold
    ), //MaterialApp
  );
}