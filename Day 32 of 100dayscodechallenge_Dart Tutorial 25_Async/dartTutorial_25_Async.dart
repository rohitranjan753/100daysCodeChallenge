//Date 30/10/2022 10:30 AM

//Dart programming fundamentals
//Topics covered is the usage of Async

import 'dart:io'; 
void main() { 
   print("Enter your name :");            
   
   // prompt for user input 
   String? name = stdin.readLineSync();  
   
   // this is a synchronous method that reads user input 
   print("Hello Mr. ${name}"); 
   print("End of main"); 
} 