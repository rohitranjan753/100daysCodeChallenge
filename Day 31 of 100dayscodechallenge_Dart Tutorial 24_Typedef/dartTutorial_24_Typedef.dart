//Date 29/10/2022 08:35 AM

//Dart programming fundamentals
//Topics covered is the usage of typedef
 
// Defining alias name
typedef RenamedFunction(int a, int b);
 
// Defining Method1 function
Method1(int a, int b) {
  print("This is Method1");
  print("$a and $b are lucky numbers !!");
}
 
// Defining Method2 function
Method2(int a, int b) {
  print("This is Method2");
  print("$a + $b is equal to ${a + b}.");
}
 
// Main Function
void main()
{
  // Using alias name to define
  // number with Method1 function
    RenamedFunction number = Method1;
  // Calling number
  number(1,2);
   
  // Redefining number
  // with Method2 function
  number = Method2;
  // Calling number
  number(3,4);
}