//Date 03/11/2022 08:10 PM

//Dart programming fundamentals.
//Topics covered is Recursion.

int factorial(int num){  
  
  //base case of recursion.   
  if(num<=1) { // base case  
        return 1;  
}  
  else{  
         return num*factorial(num-1);    //function call itself.  
 }  
}  
void main() {  
  var num = 5;  
  // Storing function call result in fact variable.  
  var fact = factorial(num);  
  print("Factorial Of 5 is: ${fact}");  
}  