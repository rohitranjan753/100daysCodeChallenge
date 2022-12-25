//Date 25/12/2022 02:00 PM

//Flutter Learning Day 48.
//Topics covered is Silvers.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                actions: <Widget>[
                  Icon(Icons.person, size: 40,)
                ],
                title: Text("SliverAppBar"),
                leading: Icon(Icons.menu),
                backgroundColor: Colors.red,
                expandedHeight: 100.0,
                floating: true,
                pinned: true
            )
            // Place sliver widgets here
          ],
        ),
      ),
    );
  }
}