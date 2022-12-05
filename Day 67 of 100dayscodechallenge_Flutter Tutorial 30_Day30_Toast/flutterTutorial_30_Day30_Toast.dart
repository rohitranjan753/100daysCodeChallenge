//Date 05/12/2022 12:30 PM

//Flutter Learning Day 30.
//Topics covered is Toast.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastExample extends StatefulWidget {
  @override
  _ToastExampleState createState() {
    return _ToastExampleState();
  }
}

class _ToastExampleState extends State {
  void showToast() {
    Fluttertoast.showToast(
        msg: 'This is toast notification',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white,
        textColor: Colors.black
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toast Notification Example',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Toast'),
            backgroundColor: Colors.red,
          ),
          body: Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: ElevatedButton(
                child: Text('click to show'),
                onPressed: showToast,
              ),
            ),
          )
      ),
    );
  }
}

void main() => runApp(ToastExample());