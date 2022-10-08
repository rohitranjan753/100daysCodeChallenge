//Date 08/10/2022 06:15 PM DAY 2

//Dart programming fundamentals
//Topics covered are functions, short hand syntax, FAT ARROW, fucntion expressions, positional parameters, named parameters.


void main() {
  findPerimeter(4, 2);

  int rectArea = getArea(10, 5);
  print("The area is $rectArea");

  printCities("New York", "New Delhi", "Sydney");
	print("");

	// printCountries("USA");  // You can skip the Optional Positional Parameters
}
//Function

void findPerimeter(int length, int breadth) {

	int perimeter = 2 * (length + breadth);
	print("The perimeter is $perimeter");
}

//another way
void findPerimeterM(int ll, int bb) {
  print("The perimeter is ${2 * (ll + bb)}");
}

int getArea(int length, int breadth) {
  int area = length * breadth;
  return area;
}


//Expression in Function: SHORT HAND SYNTAX

// "=>" is known as FAT ARROW
// "=> expression" is a SHORT HAND SYNTAX for { return expression; }
// Example "=> length * breadth" is SHORT HAND SYNTAX for { return length * breadth; }


void findPerimeterR(int length, int breadth) => print("The perimeter is ${2 * (length + breadth)}");

int getAreaR(int length, int breadth) => length * breadth;

// Required Parameters
void printCities(String name1, String name2, String name3) {

	print("Name 1 is $name1");
	print("Name 2 is $name2");
	print("Name 3 is $name3");
}

// Optional Positional Parameters
// void printCountries(String name1, [String name2, String name3]) {

// 	print("Name 1 is $name1");
// 	print("Name 2 is $name2");
// 	print("Name 3 is $name3");