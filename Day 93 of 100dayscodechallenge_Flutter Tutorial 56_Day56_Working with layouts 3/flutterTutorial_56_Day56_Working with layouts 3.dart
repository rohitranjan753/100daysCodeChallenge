//Date 02/01/2023 09:10 AM

//Flutter Learning Day 56.
//Topics covered is Working with layouts 3.


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
            title: Text('Working with layouts 3'),
            centerTitle: true,
            backgroundColor: Colors.red[600]
        ),
        body: Center(child: _buildGrid()));
  }

  Widget _buildGrid() => GridView.extent(
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(10));

  List<Container> _buildGridTileList(int count) => List.generate(
      count,
          (i) => Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ));
}