//Date 17/12/2022 08:13 PM

//Flutter Learning Day 41.
//Topics covered is Expansion UI Orientation.


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'UI orientation';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: OrientationList(
        title: appTitle,
      ),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String title;

  OrientationList({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.red),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(

            //grid with 3 and 4 columns for portrait and landscape mode respectively
            crossAxisCount: orientation == Orientation.portrait ? 3 : 4,

            // random item generator
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'A $index',
                  style: Theme.of(context).textTheme.headline4,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}