# Explanation:

### Problem statement: <br>
Implement sparse matrix using array with insert operation, delete operation, search operation and display operation.

Test case:
1. After matrix input we will check for sparse matrix, wether the given input by user is valid or not.
2. If user try to delete the element which is already 0.
3. If user enter wrong index value for delete which is not present in matrix, the program wont allow user to enter.
4. If user enter wrong index value for search which is not present in matrix, the program wont allow user to enter.

Sample Input:<br>
A matrix

Sample output:<br>
Result of various operation like insertion, deletion, search and display.<br>

#### For Insertion
1.	Sparse matrix is a matrix where number of zero element is more than non-zero element.
2.	For inserting element we are initializing a two dimensional array Array[][].
3.	Then we are taking rows and cols value from user.
4.	Then we are taking input in array for every rows and cols value.

##### For Deletion
1.	For deletion we are taking index value from user as FirstIndex and SecondIndex.
2.	Then we are checking if the given index is already 0 or not. If not then we are deleting the element and placing 0 at that position.

#### For Search
1.	For searching we are taking index value from user as FirstIndex and SecondIndex.
2.	Then we are searching for the index that is input by user and we are printing the element present at that index.
