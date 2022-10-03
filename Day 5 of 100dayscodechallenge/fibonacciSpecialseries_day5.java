// Fibonacci Special Series where every alternate digit will be result of subtraction of its previous and next value.

//Program started at 1:00 PM completed at 2:00PM on 03/10/2022
//Rohit Ranjan www.linkedin.com/in/rohitranjan753

import java.util.*;

class fibonacciSpecialseries {
    public static void main(String[] args) {

        int numOfterms, firstNum = 0, secondNum = 1,nextNum,diffTerm,fst;
        Scanner sc = new Scanner(System.in);
        System.out.println("No of terms: ");
        numOfterms = sc.nextInt();

        System.out.println("Fibonacci Series: ");
        System.out.print(firstNum + ",");
        for (int i = 2; i <= numOfterms; i++) {
            
            // compute the next term
            if(i%2==0){
                nextNum = firstNum + secondNum;
                fst = firstNum;
                firstNum = secondNum;
                secondNum = nextNum;
                diffTerm = fst - secondNum;
                System.out.print(diffTerm+",");
            }
            else{
                nextNum = firstNum + secondNum;
                firstNum = secondNum;
                secondNum = nextNum;
                System.out.print(firstNum+",");
            }
        }
    }
}