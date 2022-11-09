//Date 09/11/2022 07:25 PM

//Flutter Learning Day 5.
//Topics covered is Images & Assets.

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
        // child: Text('Hello World',
        //   style: TextStyle(
        //     fontSize: 40.0,
        //     fontWeight: FontWeight.bold,
        //     letterSpacing: 3.0,
        //     fontFamily: 'RboretoRegular',
        //     color: Colors.lightBlue[800],
        //   ),
        // ),
        child: Image.asset('assets/pic1.jpg'),
            // image: AssetImage('assets/pic1.jpg')
            // image: AssetImage('assets/pic1.jpg'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Text('Button'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}