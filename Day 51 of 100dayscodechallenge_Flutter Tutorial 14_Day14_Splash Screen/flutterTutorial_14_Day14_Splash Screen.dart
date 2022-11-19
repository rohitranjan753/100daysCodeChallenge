//Date 18/11/2022 11:30 AM

//Flutter Learning Day 14.
//Topics covered is Splash Screen.

import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/welcome_screen.dart';



class LandingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splash: Column(
            children: [
              Image.asset(
                'assets/icons/pheniox1.png', height: 300.0,width: 300.0,),
            ],
          ), nextScreen: WelcomeScreen(),
          splashTransition: SplashTransition.decoratedBoxTransition,
          splashIconSize: 300,
          duration: 3000,
          backgroundColor: Colors.transparent,
        )
    );
  }
}
