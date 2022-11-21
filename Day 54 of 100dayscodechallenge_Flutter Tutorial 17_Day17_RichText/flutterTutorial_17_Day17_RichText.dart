//Date 21/11/2022 08:00 PM

//Flutter Learning Day 17.
//Topics covered is Richtext.


import 'dart:ui';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp( home: MyApp(),));
}
class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}
class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter RichText'),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(text: 'Trust ',style: TextStyle(
                          color: Colors.black
                        )),
                        TextSpan(text: 'the ', style: TextStyle(
                          fontStyle: FontStyle.italic,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)
                        ),
                          TextSpan(
                            text: 'Process',style:
                              TextStyle(
                                color: Colors.deepPurpleAccent
                              )
                          )

                      ]
                    ),
                  )
                ),
                // Padding(
                //   padding: EdgeInsets.all(15),
                //   child: TextField(
                //     obscureText: true,
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(),
                //       labelText: 'Password',
                //       hintText: 'Enter Password',
                //     ),
                //   ),
                // ),
                // ElevatedButton(onPressed: () {  }, child: Text('Submit'),
                // )
              ],
            )
        )
    );
  }
}