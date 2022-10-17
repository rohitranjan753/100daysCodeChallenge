//Date 17/10/2022 11:30 PM

//Dart programming fundamentals
//Topics covered is Interface class

void main() {

	var tv = Television();
	tv.volumeUp();
	tv.volumeDown();
}

class Remote {

	void volumeUp() {
		print("______Volume Up from Remote_______");
	}

	void volumeDown() {
		print("______Volume Down from Remote_______");
	}
}

class AnotherClass {

	void justAnotherMethod(){
		// Code
	}

}

// Here Remote and AnotherClass acts as Interface
class Television implements Remote, AnotherClass {

	void volumeUp() {
//		super.volumeUp();       // Not allowed to call super while implementing a class as Interface
		print("______Volume Up in Television_______");
	}

	void volumeDown() {
		print("______Volume Down in Television_______");
	}

	void justAnotherMethod() {
		print("Some code");
	}
}