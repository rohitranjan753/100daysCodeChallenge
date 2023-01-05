//Date 05/01/2023 09:10 PM

//Flutter Learning Day 59.
//Topics covered is Working with layouts 6.


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
            title: Text('Working with layouts 6'),
            centerTitle: true,
            backgroundColor: Colors.red[600]
        ),
        body: Center(child: _buildCard()));
  }

  // Function returns the SizeBox Widget inside that Card widget is present

  Widget _buildCard() => SizedBox(
    height: 210,
    child: Card(
      elevation: 20,
      child: Column(
        children: [
          ListTile(
            title: Text('Dominos',
                style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('log writing'),
            leading: Icon(
              Icons.restaurant_menu,
              color: Colors.blue[500],
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Noida, India',
                style: TextStyle(fontWeight: FontWeight.w500)),
            leading: Icon(
              Icons.contact_phone,
              color: Colors.blue[500],
            ),
          ),
          ListTile(
            title: Text('dominos.com'),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.blue[500],
            ),
          ),
        ],
      ),
    ),
  );
}