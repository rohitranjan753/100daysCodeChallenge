//Date 02/11/2022 06:10 PM

//Dart programming fundamentals.
//Topics covered is Generics.

//In Dart, by default collections are heterogeneous.
//However, by the use of generics, we can make a collection to hold homogeneous values.
//The use of Generics makes the use of a single compulsory data type to be held inside the collection.
//Such collections are called type-safe collections.
//By the use of generics, type safety is ensured in the Dart language.

void main() { 
   Set <int>numberSet = new  Set<int>(); 
   numberSet.add(100); 
   numberSet.add(20); 
   numberSet.add(5); 
   numberSet.add(60);
   numberSet.add(70); 
   
   //numberSet.add("Tom"); //compilation error; 
   print("Default implementation  :${numberSet.runtimeType}");  
   
   for(var no in numberSet) { 
      print(no); 
   } 

   List <String> logTypes = <String>[]; 
   //logTypes.add(1);    //Error
   logTypes.add("ERROR"); 
   logTypes.add("INFO"); 
  
   //iterating across list 
   for (String type in logTypes) { 
      print(type); 
   }
} 