//Date 06/01/2023 09:10 AM

//Flutter Learning Day 60.
//Topics covered is Appbar Customization 1.

import "package:flutter/material.dart";

// function to trigger the build process
void main() {
  runApp(MyApp()); //MaterialApp
}

// ignore: non_constant_identifier_names
MaterialApp MyApp() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Appbar Customization"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.red,
      ), //AppBar
      body: const Center(
        child: Text(
          'APPBAR',
          style: TextStyle(fontSize: 24),
        ),
      ), //Center
    ), //Scaffold
    debugShowCheckedModeBanner: false, //Removing Debug Banner
  );
}