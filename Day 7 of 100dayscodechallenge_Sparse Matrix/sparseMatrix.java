// Implement sparse matrix using array.

//Program started at 6:30 PM completed at 8:10PM on 05/10/2022
//Rohit Ranjan www.linkedin.com/in/rohitranjan753

//Test case:
//1. After matrix input we will check for sparse matrix, wether the given input by user is valid or not.
//2. If user try to delete the element which is already 0.
//3. If user enter wrong index value for delete which is not present in matrix, the program wont allow user to enter.
//4. If user enter wrong index value for search which is not present in matrix, the program wont allow user to enter.

import java.util.*;

public class sparseMatrix {

    static void insertOperation(int array[][], int rowVal, int colVal) {        //for inserting element in matrix
        System.out.println("Enter the elements: ");
        Scanner sc = new Scanner(System.in);
        int m = 0, n = 0;
        for (m = 0; m < rowVal; m++) {
            for (n = 0; n < colVal; n++) {
                array[m][n] = sc.nextInt();                 //taking input.
            }
        }
    }

    static void checkSparse(int array[][], int rowVal, int colVal) {        //for checking wether input matrix is saprse or not.
        int m = 0, n = 0;
        int zeroElement = 0, nonzeroElement = 0;
        for (m = 0; m < rowVal; m++) {
            for (n = 0; n < colVal; n++) {
                if (array[m][n] == 0) {
                    zeroElement++;          //if zero element is present we are increasing zero element counter.
                } else {
                    nonzeroElement++;       //if non-zero element is present we are increasing non-zero element counter.
                }
            }
        }
        System.out.println();
        System.out.println("No. of zero element: " + zeroElement);

        System.out.println("No. of non-zero element: " + nonzeroElement);
        if (nonzeroElement > zeroElement) {
            System.out.println("Its not a sparse matrix");
            System.exit(0);

        } else {
            System.out.println("Its a sparse matrix");
        }

    }

    static void deleteMatrix(int array[][], int rowVal, int colVal) {       //for deletion of element in matrix.
        Scanner sc = new Scanner(System.in);
        int choice = 1;
        int firstIndex, secondIndex;
        while (choice == 1) {
            displayMatrix(array, rowVal, colVal);
            System.out.println("Which element you want to delete: ");
            System.out.println("Enter first index: ");
            firstIndex = sc.nextInt();                          //taking input of first index from user.
            System.out.println("Enter second index: ");
            secondIndex = sc.nextInt();                         //taking input of second index from user.
            if(secondIndex > rowVal && firstIndex > rowVal && secondIndex > colVal && secondIndex > colVal){
                System.out.println("You entered wrong index value.");
                break;
            }
            else{
                if (array[firstIndex - 1][secondIndex - 1] != 0) {
                    array[firstIndex - 1][secondIndex - 1] = 0;     //setting the value to 0.
                    System.out.println("Element has been deleted");
                } else {
                    System.out.println("Element is already 0");
                }
                System.out.println("Do you want to continue? 1 for YES | 0 for NO");
                choice = sc.nextInt();
            }
            
        }

    }

    static void searchMatrix(int array[][], int rowVal, int colVal) {       //for searching element in matrix
        Scanner sc = new Scanner(System.in);
        int searchElement;
        int choice = 1;
        int firstIndex, secondIndex;
        while (choice == 1) {
            System.out.println("Which element you want to search: ");
            System.out.println("Enter first index: ");
            firstIndex = sc.nextInt();                          //taking input of first index from user.
            System.out.println("Enter second index: ");
            secondIndex = sc.nextInt();                         //taking input of second index from user.
            if(secondIndex > rowVal && firstIndex > rowVal && secondIndex > colVal && secondIndex > colVal){
                System.out.println("You entered wrong index value.");
                break;
            }
            else{
                if (array[firstIndex - 1][secondIndex - 1] != 0) {
                    searchElement = array[firstIndex - 1][secondIndex - 1];     //storing the value of searched element.
                    System.out.println("Element present at " + "[" + (firstIndex - 1) + " " + (secondIndex - 1) + "]"
                            + " -> " + searchElement);
                } else {
                    System.out.println("Element is empty");
                }
                System.out.println("Do you want to continue? 1 for YES | 0 for NO");
                choice = sc.nextInt();
            }
            
        }
    }

    static void displayMatrix(int array[][], int rowVal, int colVal) {          //display matrix
        int m = 0, n = 0;
        for (m = 0; m < rowVal; m++) {
            for (n = 0; n < colVal; n++) {
                System.out.print(array[m][n] + " ");
            }
            System.out.println();
        }
    }

    public static void main(String[] args) {

        int col = 0, row = 0;

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter row: ");
        row = sc.nextInt();

        System.out.println("Enter col: ");
        col = sc.nextInt();

        int a[][] = new int[row][col];

        while (true) {
            int choice = 0;
            System.out.println("Enter your choice:->>\n1.Insert\n2.Delete\n3.Search\n4.Display\n5.Exit");
            choice = sc.nextInt();
            switch (choice) {
                case 1:
                    insertOperation(a, row, col);           //calling insert method
                    checkSparse(a, row, col);
                    System.out.println();
                    break;

                case 2:
                    deleteMatrix(a, row, col);              //calling delete method
                    System.out.println();
                    break;

                case 3:
                    searchMatrix(a, row, col);              //calling search method
                    System.out.println();
                    break;
                case 4:
                    displayMatrix(a, row, col);             //calling display method
                    System.out.println();
                    break;
                
                case 5:
                    System.exit(0);
                    break;

                default:
                    System.out.println("You entered wrong choice");
                    break;
            }
        }

    }
}
