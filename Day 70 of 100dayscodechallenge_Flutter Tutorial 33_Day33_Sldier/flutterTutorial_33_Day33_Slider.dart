//Date 08/12/2022 08:12 PM

//Flutter Learning Day 33.
//Topics covered is Slider.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySliderApp(),
    );
  }
}

class MySliderApp extends StatefulWidget {
  MySliderApp({ Key? key}) : super(key: key);

  @override
  _MySliderAppState createState() => _MySliderAppState();
}

class _MySliderAppState extends State<MySliderApp> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Slider'),
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.volume_up,
                      size: 40,
                    ),
                    new Expanded(
                        child: Slider(
                            value: _value.toDouble(),
                            min: 1.0,
                            max: 20.0,
                            divisions: 10,
                            activeColor: Colors.green,
                            inactiveColor: Colors.orange,
                            label: 'Set volume value',
                            onChanged: (double newValue) {
                              setState(() {
                                _value = newValue.round();
                              });
                            },
                            semanticFormatterCallback: (double newValue) {
                              return '${newValue.round()} dollars';
                            }
                        )
                    ),
                  ]
              )
          ),
        )
    );
  }
}