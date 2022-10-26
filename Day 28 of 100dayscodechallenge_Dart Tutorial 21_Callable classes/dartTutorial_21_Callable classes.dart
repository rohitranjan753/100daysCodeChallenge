//Date 26/10/2022 09:30 PM

//Dart programming fundamentals
//Topics covered is Callable classes


void main() {

	var personOne = Person();
	var msg = personOne(25, "Peter");
	print(msg);
}

class Person {
	
	String call(int age, String name) {
		return "The name of the person is $name and age is $age";
	}
}