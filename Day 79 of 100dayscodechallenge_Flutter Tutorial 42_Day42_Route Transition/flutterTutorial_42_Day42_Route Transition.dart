//Date 19/12/2022 06:10 PM

//Flutter Learning Day 42.
//Topics covered is Route Transition.


import 'package:flutter/material.dart';

main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route Transition'),
        backgroundColor: Colors.red,
      ),
      body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(_createRoute());
            },
            child: const Text('Go to Page 2'),
          )

        // RaisedButton is deprecated
        // We should use ElevatedButton instead

        // child: RaisedButton(
        // child: const Text('Go to Page 2'),
        // onPressed: () {
        //	 Navigator.of(context).push(_createRoute());
        // },
        // ),

      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = const Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: const Center(
        child: Text('Page 2'),
      ),
    );
  }
}