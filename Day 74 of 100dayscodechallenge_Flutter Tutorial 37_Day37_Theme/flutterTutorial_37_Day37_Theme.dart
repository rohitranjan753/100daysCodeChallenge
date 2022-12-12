//Date 12/12/2022 05:15 PM

//Flutter Learning Day 37.
//Topics covered is Theme.


import 'package:flutter/material.dart';

void main() {runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue,

        // Define the default font family.
        fontFamily: 'Monotype Coursiva',

        // Define the TextTheme that specifies the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 32.0, fontStyle: FontStyle.italic, fontFamily: 'Hind')
        ),
      ),
      home: MyThemePage(),
    );
  }
}

class MyThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Theme'),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Text(
            'Themes contains the graphical appearances that makes the user interface more attractive.',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          colorScheme:
          Theme.of(context).colorScheme.copyWith(secondary: Colors.blue),
        ),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.person),
        ),
      ),
    );
  }
}