//Date 11/12/2022 09:11 PM

//Flutter Learning Day 36.
//Topics covered is Checkbox.

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool? check1 = false, check2 = true, check3 = false;
  //true for checked checkbox, flase for unchecked one

  @override
  Widget build(BuildContext context) {


    return  Scaffold(
        appBar: AppBar(
            title: Text("Flutter Checkbox"),
            backgroundColor: Colors.redAccent
        ),
        body: Container(
            padding: EdgeInsets.only(top:20, left:20, right:20),
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Checkbox( //only check box
                    value: check1, //unchecked
                    onChanged: (bool? value){
                      //value returned when checkbox is clicked
                      setState(() {
                        check1 = value;
                      });
                    }
                ),

                CheckboxListTile( //checkbox positioned at right
                  value: check2,
                  onChanged: (bool? value) {
                    setState(() {
                      check2 = value;
                    });
                  },
                  title: Text("Do you really want to learn Flutter?"),
                ),

                CheckboxListTile( //checkbox positioned at left
                  value: check3,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check3 = value;
                    });
                  },
                  title: Text("Do you really want to learn Flutter?"),
                ),

              ],)
        )
    );
  }
}