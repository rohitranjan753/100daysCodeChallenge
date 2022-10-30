//Date 01/11/2022 02:30 PM

//Dart programming fundamentals
//Topics covered is Set & it's operation.

//The Dart Set is the unordered collection of the different values of the same type.
//It has much functionality, which is the same as an array, but it is unordered.
//Set doesn't allow storing the duplicate values. The set must contain unique values.

void main() {
  print("Insert element into the Set");
  var names = {"James", "Ricky", "Devansh", "Adam"};
  // Declaring empty set
  var emp = <String>{};
  emp.add("Jonathan");
  print(emp);

  // Adding multiple elements
  emp.addAll(names);
  print(emp);

  //Accessing element
  var x = names.elementAt(3);
  print(x);

  //if specified value is present or not
  if (names.contains("Ricky")) {
    print("Element Found");
  } else {
    print("Element not found");
  }
  //clear Set value
  names.clear();
  print(names);


   var x1 = <int>{10,11,12,13,14,15};  
    var y = <int>{12,18,29,43};  
    var z = <int>{2,5,10,11,32};  
    print("Example - Set Operations");  
      
    print("x union y is -");  
    print(x1.union(y));  
  
    print("x intersection y is - ");  
    print(x1.intersection(y));  
      
    print("y difference z is - ");  
     print(y.difference(z)); 
}
