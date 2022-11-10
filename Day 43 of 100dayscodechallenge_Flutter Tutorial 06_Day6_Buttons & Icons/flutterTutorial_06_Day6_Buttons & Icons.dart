//Date 09/11/2022 07:15 AM

//Flutter Learning Day 6.
//Topics covered is Buttons and Icons.

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('My First App'),
          centerTitle: true,
          backgroundColor: Colors.red[600]
      ),
      body: Center(
        child: Icon(
            Icons.add_a_photo_outlined,
            color: Colors.lightBlue,
            size: 100.0,
          ),
        // child: TextButton(onPressed: onPressed, child: child),
        // child: TextButtonTheme(data: data, child: child),
        // child: ElevatedButton(
        //   onPressed: () {},
        //   child: Text('Click me'),
        // ),
      ),
      //
      // ),
        // child: Text('Hello World',
        //   style: TextStyle(
        //     fontSize: 40.0,
        //     fontWeight: FontWeight.bold,
        //     letterSpacing: 3.0,
        //     fontFamily: 'RboretoRegular',
        //     color: Colors.lightBlue[800],
        //   ),
        // ),
      //   child: Image.asset('assets/pic1.jpg'),
      //       // image: AssetImage('assets/pic1.jpg')
      //       // image: AssetImage('assets/pic1.jpg'),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Text('Button'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}