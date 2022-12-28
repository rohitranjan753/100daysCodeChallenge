//Date 28/12/2022 09:10 AM

//Flutter Learning Day 51.
//Topics covered is Animate Color.


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vitclub/welcomePage.dart';

class StudentLogin extends StatefulWidget{
  @override
  State<StudentLogin> createState() => _StudentLoginState();
}

class _StudentLoginState extends State<StudentLogin> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,//(0r use singlescrollablechild
      backgroundColor: Colors.white,
      body: SingleChildScrollView(//use singlechildscrollableview in body
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height:40,),
            // Text("Welcome to Login",
            // style: TextStyle(
            //   fontWeight: FontWeight.bold,
            //   fontSize: 24
            // ),),

            Image.asset('assets/students1.jpg',
            scale: 5,alignment: Alignment.center,
            ),
            SizedBox(height: 100,),

            // Form(
            //   child: Column(
            //     children: [
            //       TextFormField(
            //         keyboardType: TextInputType.emailAddress,
            //         decoration: InputDecoration(
            //           labelText: 'Email',
            //           hintText: 'Email',
            //           prefixIcon: Icon(Icons.email_rounded),
            //           border: OutlineInputBorder()
            //         ),
            //       )
            //     ],
            //   ),
            //
            // ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  // border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_rounded,color: Colors.grey,),
                      // border: InputBorder.none,
                      hintText: 'Email',
                        labelText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                        ),
                    ),
                    onChanged: (String value){

                    },
                    
                  ),
                ),
              ),
            ),
            //Password
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)

                      ),
                      prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                      hintText: 'Password',
                      labelText: 'Password',
                      suffix: InkWell(
                        onTap: _togglePasswordView,
                          child: Icon(
                            _isHidden? Icons.visibility: Icons.visibility_off,
                            size: 17,
                          ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: Colors.transparent,
            //       border: Border.all(color: Colors.grey),
            //       borderRadius: BorderRadius.circular(15),
            //     ),
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: TextField(
            //         obscureText: true,
            //         decoration: InputDecoration(
            //           border: InputBorder.none,
            //           prefixIcon: Icon(Icons.lock,color: Colors.grey,),
            //           hintText: 'Password',
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            //Sign In button
            SizedBox(height: 100),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: MaterialButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));
                  },
                height: 50,
                minWidth: 200,
                    child: Text('Sign In',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                    color: Colors.blue[600],
                    textColor: Colors.white,
                    elevation: 5,
                  ),
              ),



            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 100),
            //   child: Container(
            //     padding: EdgeInsets.all(14),
            //     decoration: BoxDecoration(color: Colors.blue[800],
            //     border: Border.all(color: Colors.transparent),
            //     borderRadius: BorderRadius.circular(15)),
            //       child: Center(
            //         child: Text('Login',
            //         style: TextStyle(
            //           fontSize: 20.0,
            //           color: Colors.white,
            //           fontWeight: FontWeight.bold,
            //         ),),
            //       ),
            //   ),
            // ),
            SizedBox(height: 20,),

            //if not login then signup
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('No account?',style: TextStyle(
                  fontSize: 20.0
                ),
                ),
                MaterialButton(onPressed: ()
                {Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));},
                  height: 20,
                  minWidth: 50,
                  child: Text('Sign Up Now',
                  style: TextStyle(
                    fontSize: 20,
                  color: Colors.blue[600]),),
                ),
                // InkWell(
                //  child: Container(
                //     child: Text(' Sign Up Now',style: TextStyle(
                //       color: Colors.blue[600],
                //       fontSize: 20.0,
                //       fontWeight: FontWeight.bold,
                //     ),
                //     ),
                //   ),
                //   onTap: () => Get.to(WelcomePage()),
                // ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}