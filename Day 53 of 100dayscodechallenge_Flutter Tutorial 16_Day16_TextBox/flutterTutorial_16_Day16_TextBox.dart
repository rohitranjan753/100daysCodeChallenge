//Date 20/11/2022 09:20 AM

//Flutter Learning Day 16.
//Topics covered is TextBox.

import 'package:flutter/material.dart';  
  
void main() {  
  runApp(MaterialApp( home: MyApp(),));  
}  
  
class MyApp extends StatefulWidget {  
  @override  
  _State createState() => _State();  
}  
  
class _State extends State<MyApp> {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
        appBar: AppBar(  
          title: Text('Flutter TextField Example'),  
        ),  
        body: Padding(  
            padding: EdgeInsets.all(15),  
            child: Column(  
              children: <Widget>[  
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'User Name',  
                      hintText: 'Enter Your Name',  
                    ),  
                  ),  
                ),  
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    obscureText: true,  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter Password',  
                    ),  
                  ),  
                ),  
                RaisedButton(  
                  textColor: Colors.white,  
                  color: Colors.blue,  
                  child: Text('Sign In'),  
                  onPressed: (){},  
                )  
              ],  
            )  
        )  
    );  
  }  
}