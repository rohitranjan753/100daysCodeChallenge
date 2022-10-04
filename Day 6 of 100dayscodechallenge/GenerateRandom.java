//Java program that randomly picks an English alphabet (A-Z) and keeps asking the user to guess the alphabet until he/she has got it right.

//Program started at 5:00 PM completed at 6:15 PM on 04/10/2022
//Rohit Ranjan www.linkedin.com/in/rohitranjan753

import java.util.Random;
import java.util.*;

class GenerateRandom {
    public static void main(String args[]) {
        String alphaString = "ABCDEFGHIJKLMNOPQRSTUVXWYZ";
        int choice = 1;
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter any alphabet: ");
        String singleChar = sc.nextLine();
        singleChar = singleChar.toUpperCase();
        Random random = new Random(); // instance of random class
        int upperbound = 26;
        int int_random = random.nextInt(upperbound);
        String getChar = "";
        getChar = getChar + alphaString.charAt(int_random);
        if (singleChar.equals(getChar)) {
            System.out.printf("You guessed right->\nYou gave: %s and output is: %s",singleChar,getChar);
        } else {
            System.out.printf("You guessed Wrong->\nYou gave: %s and output is: %s",singleChar,getChar);
        }

    }
}