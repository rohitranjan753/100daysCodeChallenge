//Date 23/11/2022 12:10 PM

//Flutter Learning Day 19.
//Topics covered is Border Class.

import 'dart:ui';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({key});

  static const String _title = 'Border Class';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0xFFFFF000)),
          left: BorderSide(color: Color(0xFFFF000)),
          right: BorderSide(),
          bottom: BorderSide(),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Color(0xFFDFDFDF)),
            left: BorderSide(color: Color(0xFFFFF000)),
            right: BorderSide(color: Color(0xFF7F7F7F)),
            bottom: BorderSide(color: Color(0xFFFFF000)),
          ),
          color: Color(0xFFBFBFBF),
        ),
        child: const Text(
            'OK',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFF000000))
        ),
      ),
    );
  }
}