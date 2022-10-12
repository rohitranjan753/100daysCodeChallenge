//Date 12/10/2022 02:10 PM

//Dart programming fundamentals
//Topics covered is Getter Setter 

void main() {

  var student = Student();
  student.name = "Peter";     // Calling default Setter to set value
  print(student.name);        // Calling default Getter to get value

  student.percentage = 438.0;   // Calling Custom Setter to set value
  print(student.percentage);    // Calling Custom Getter to get value
}

class Student {

  String name="";        // Instance Variable with default Getter and Setter

  double _percent=0.0;    // Private Instance Variable for its own library

  // Instance variable with Custom Setter
  void set percentage(double marksSecured) => _percent = (marksSecured / 500) * 100;
  // Instance variable with Custom Getter
  double get percentage => _percent;
}