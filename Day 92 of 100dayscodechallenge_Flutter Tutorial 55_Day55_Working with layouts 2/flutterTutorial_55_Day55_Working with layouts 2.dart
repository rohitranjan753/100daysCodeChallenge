//Date 01/01/2023 09:10 AM

//Flutter Learning Day 55.
//Topics covered is Working with layouts 2.


import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Working with layouts 2'),
            centerTitle: true,
            backgroundColor: Colors.red[600]
        ),
        body: Center(
            child: _buildImageColumn()
        )
    );
  }

  Widget _buildImageColumn() =>
      Container(
        decoration: BoxDecoration(
          color: Colors.black12,
        ),
        child: Column(
          children: [
            Container(
              height: 100.0,
              width: 50.0,
              color: Colors.green,
            ),
            Container(
              height: 100.0,
              width: 50.0,
              color: Colors.yellow,
            ),
          ],
        ),
      );
}