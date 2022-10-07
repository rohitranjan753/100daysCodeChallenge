//Date 07/10/2022 03:22 PM DAY 2

//Dart programming fundamentals
//Topics covered are ternary operator, switch case, loops and iterators, for loop, while loop, do-while loop, break, continue keyword, label.

void main(){

  // Conditional Expressions

	// 1.   condition ? exp1 : exp2
	// If condition is true, evaluates expr1 (and returns its value);
	// otherwise, evaluates and returns the value of expr2.
  var aa=10;
  var bb=20;
  aa<bb? print("$aa is smaller") : print("$bb is samller");

  var nameVal = null;
  String nameToprint =nameVal??"guest user";
  print(nameToprint);


  //Switch case

  String choice = "C";
  switch(choice){
    case "A":
      print("you are in 1st");
      break;
    case "B":
      print("you are in   no");
      break;
    default:
    print("in default");
  }

  //Loops
  for (int i = 0; i < 4; i++) {
    print("helloe ${i + 1}");
  }


  // for ..in loop
	List planetList = ["Mercury", "Venus", "Earth", "Mars"];

	for (String planet in planetList) {
		print(planet);
	}


  //while loop
  int i = 0;
  while (i < 4) {
    print('Hellow $i vale');
    i++;
  }


  //do while
  var x = 0;
  do {
    print("$x hello");
    x++;
  } while (x < 5);


  // BREAK keyword
	// Using Labels
	// Nested FOR Loop

	myOuterLoop: for (int i = 1; i <= 3; i++) {

		innerLoop: for (int j = 1; j <= 3; j++) {
			print("$i $j");

			if (i == 2 && j == 2) {
				break myOuterLoop;
			}
		}
	}

  // CONTINUE keyword
	// Using Labels
	myLoop: for (int i = 1; i <= 3; i++) {

		myInnerLoop: for (int j = 1; j <= 3; j++) {

			if (i == 2 && j == 2) {
				continue myLoop;
			}
			print("$i  $j");
		}
	}

  // CONTINUE keyword
	// Using Labels

	myLoop: for (int i = 1; i <= 3; i++) {

		myInnerLoop: for (int j = 1; j <= 3; j++) {

			if (i == 2 && j == 2) {
				continue myLoop;
			}
			print("$i  $j");
		}
	}

  
  //LABEL
  myouterLoop: for(int i=1;i<=3;i++){

    for(int j=1;j<=3;j++){
      print("$i $j");

      if(i==2 && j==2){
        break myouterLoop;
      }
    }
  }
}