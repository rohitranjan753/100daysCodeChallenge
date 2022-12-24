//Date 24/12/2022 07:00 PM

//Flutter Learning Day 47.
//Topics covered is Named Route.


import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Named Routes',
    initialRoute: '/',
    routes: {
      '/': (context) => const firstRoute(),
      '/second': (context) => const secondRoute(),
    },
  ));
}

// ignore: camel_case_types
class firstRoute extends StatelessWidget {
  const firstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Launch screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ), // Elevated

        // RaisedButton is deprecated now
        // child: RaisedButton(
        // child: const Text('Launch screen'),
        // onPressed: () {
        //	 Navigator.pushNamed(context, '/second');
        // },
        // ),
      ),
    );
  }
}

// ignore: camel_case_types
class secondRoute extends StatelessWidget {
  const secondRoute({Key? key}) : super(key: key);

  @override
// ignore: dead_code
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Route"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ), // ElevatedButton
      ),

      // RaisedButton is deprecated now
      // child: RaisedButton(
      // onPressed: () {
      //	 Navigator.pop(context);
      // },
      // child: const Text('Go back!'),
      // ),
    );
  }
}