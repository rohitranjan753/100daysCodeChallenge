//Date 03/01/2023 09:10 AM

//Flutter Learning Day 57.
//Topics covered is Working with layouts 4.


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
            title: Text('Working with layouts 4'),
            centerTitle: true,
            backgroundColor: Colors.red[600]
        ),
        body: Center(child: _buildList()));
  }

  Widget _buildList() => ListView(

    // name is a listTile widget which is defined below
    children: [
      name('james', 'thomas'),
      name('Ajay', 'kumar'),
      name('Arun', 'das'),
      name('Roxie', 'St'),
      name('Stanlee', 'jr'),
      name('AMC', 'hales'),
      Divider(),
      name('Monty',"Chopra"),
      name('Emmy', 'Ave'),
      name(
          'Chaitanya', ' kumar'),
      name('Rio', 'St'),
    ],
  );



// name is a function returning ListTile widget
  ListTile name(String firstName, String lastName) => ListTile(
    title: Text(firstName,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: Text(lastName),
    leading: Icon(
      Icons.arrow_back_ios,
      color: Colors.blue[500],
    ),
  );
}