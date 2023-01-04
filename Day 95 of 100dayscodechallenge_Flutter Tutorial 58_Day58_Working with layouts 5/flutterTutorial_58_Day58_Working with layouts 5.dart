//Date 04/01/2023 09:10 PM

//Flutter Learning Day 58.
//Topics covered is Working with layouts 5.


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
            title: Text('Working with layouts 5'),
            centerTitle: true,
            backgroundColor: Colors.red[600]
        ),
        body: Center(child: _buildStack()));
  }

  Widget _buildStack() =>
      Stack(
        alignment: const Alignment(0.6, 0.6),
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.black45,
                shape: BoxShape.circle
            ),
            child: Center(
              child: Text(
                'Layout',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      );
}