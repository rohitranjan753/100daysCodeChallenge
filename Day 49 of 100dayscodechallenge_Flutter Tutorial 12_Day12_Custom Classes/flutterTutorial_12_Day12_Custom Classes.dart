//Date 16/11/2022 10:20 AM

//Flutter Learning Day 12.
//Topics covered is Custom Classes.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'Book1', author: 'Oscar Wilde1'),
    Quote(text: 'Book2', author: 'Oscar Wilde2'),
    Quote(text: 'Book3', author: 'Oscar Wilde3')
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
          return Text('${quote.text} - ${quote.author}',style: TextStyle(
            fontSize: 30.0,
          ),);
        }).toList(),
      ),
    );
  }
}