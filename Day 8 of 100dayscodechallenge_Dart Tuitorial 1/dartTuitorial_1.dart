//Date 06/10/2022 03:15 PM DAY 1

//Dart programming fundamentals
//Topics covered are data types and variables, data string, literals and String interpolation, final and constant keyword, Conditional statement.

void main() {
  print('Hello World');
  print('This is my program');
  print(2-1);
  print(true);

  int age=20;
  print(age);
  var age1=10;
  print(age1);

  double salary=200.393;
  print(salary);

  var exponent = 1.42e5;
  print(exponent);

  int hexvalue = 0xFF;
  print(hexvalue);

  String s1 = 'rohit';
  String s2 = 'amama';
  String s3 = 'it\'s easy';

  print(s3);
  String mesage = "My name is"+s1;
  print(mesage);

  String message = "My name is $s1";
  print(message);

  print("The lengt is"+s1.length.toString());

  //String interpolation
  print("the new length is ${s1.length}");

  int l = 3;
  int b=2;
  print('AREA OF RECTANGLE:${l*b}');
  print("area of rect $l and $b is${l*b}");

  //Constant and final keyword
  final cityNamr = 'mumbai';

  // cityNamr = "hello";//we cant change the value of final.

  const PI = 3.14;
  const double gravity = 9.8;


  //Conditional Statements
  int aa = 2;
  int bb=3;

  if(aa>bb){
    print("Value is greater $aa");
  }
  else{
    print("This is greater $bb");
  }

  // IF ELSE IF Ladder statements
	var marks = 70;

	if (marks >= 90 && marks < 100) {
		print("A+ grade");
	} else if (marks >= 80 && marks < 90) {
		print("A grade");
	} else if (marks >= 70 && marks < 80) {
		print("B grade");
	} else if (marks >= 60 && marks < 70) {
		print("C grade");
	} else if (marks > 30 && marks < 60) {
		print("D grade");
	} else if (marks >= 0 && marks < 30) {
		print("You have failed");
	} else {
		print("Invalid Marks. Please try again !");
	}

}
