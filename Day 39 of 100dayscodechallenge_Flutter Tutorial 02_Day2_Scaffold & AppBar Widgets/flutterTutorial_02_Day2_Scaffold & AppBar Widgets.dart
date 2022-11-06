//Date 06/11/2022 10:00 PM

//Flutter Learning Day 2.
//Topics covered is Scaffold & AppBar Widgets.

//Scaffold class implements the basic Material Design visual layout structure.
//This class provides APIs for showing drawers and bottom sheets.

//To display a persistent bottom sheet, obtain the ScaffoldState for the current BuildContext
//via Scaffold.of and use the ScaffoldState.showBottomSheet function.

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('My First App'),
      centerTitle: true,
    ),
    body: Center(
      child: Text('Hello World'),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {  },
      child: Text('Button'),
    ),
  ),
));

