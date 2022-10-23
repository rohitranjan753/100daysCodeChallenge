//Date 22/10/2022 08:20 AM

//Dart programming fundamentals
//Topics covered is Fixed-length list

void main() {

	// Elements:    N   N   N   N   N
	// Index:       0   1   2   3   4

	List<int> numbersList = List.filled(0,5);        // Fixed-length list
	numbersList[0] = 73;  // Insert operation
	numbersList[1] = 64;
	numbersList[3] = 21;
	numbersList[4] = 12;

	numbersList[0] = 99;  // Update operation
	numbersList[1];// Delete operation

	print(numbersList[0]);
	print("\n");

//	numbersList.remove(73);                 // Not supported in fixed-length list
//	numbersList.add(24);                    // Not supported in fixed-length list
//	numbersList.removeAt(3);                // Not supported in fixed-length list
//	numbersList.clear();                    // Not supported in fixed-length list

	for (int element in numbersList) {                          // Using Individual Element (Objects)
		print(element);
	}

	print("\n");

	numbersList.forEach((element) => print(element));           // Using Lambda

	print("\n");

	for (int i = 0; i < numbersList.length; i++) {              // Using Index
		print(numbersList[i]);
	}
}