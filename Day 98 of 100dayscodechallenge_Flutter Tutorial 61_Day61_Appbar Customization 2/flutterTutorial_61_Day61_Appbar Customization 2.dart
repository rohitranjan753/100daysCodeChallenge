//Date 07/01/2023 09:10 AM

//Flutter Learning Day 61.
//Topics covered is Appbar Customization 2.

import "package:flutter/material.dart";
import 'package:flutter/services.dart';

void main() {
  runApp(gfgApp()); //MaterialApp
}

MaterialApp gfgApp() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Appbar Customization 2"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_a_photo_outlined),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.red,
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.account_balance_wallet_rounded),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ), //AppBar
      body: const Center(
        child: Text(
          "APPBAR",
          style: TextStyle(fontSize: 24),
        ), //Text
      ), //Center
    ), //Scaffold
    debugShowCheckedModeBanner: false, //Removing Debug Banner
  );
}