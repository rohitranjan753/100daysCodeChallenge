//Date 15/11/2022 07:20 PM

//Flutter Learning Day 11.
//Topics covered is Lists of Data.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes = [
    'This is 1st quote',
    'This is 2nd quote',
    'This is 3rd quote'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quote Section'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: quotes.map((quote){
          return Text(quote,style: TextStyle(
            fontSize: 40.0,
          ),);
        }).toList(),
      ),
    );
  }
}