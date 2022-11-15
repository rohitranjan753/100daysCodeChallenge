//Date 12/11/2022 07:20 PM

//Flutter Learning Day 9.
//Topics covered is Rows.
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('My First App'),
          centerTitle: true,
          backgroundColor: Colors.red[600]
      ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("hello"),
            TextButton(onPressed: (){},
              child: Text("Button",style: TextStyle(
                color: Colors.red,
              ),
              ),
            ),
            Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30.0),
              child: Text("Container"),
            )
          ],
      ),
    );
}}
