// Given an integer x, return true if x is palindrome integer.
//An integer is a palindrome when it reads the same backward as forward.

//Program started at 8:45 PM completed at 09:00PM on 30/09/2022
//Rohit Ranjan www.linkedin.com/in/rohitranjan753

class integerPalindrome {
    public boolean isPalindrome(int x) {
        int value = x;
        int palindromeValue=0,newVal;
        if(x>=0){
            while(value != 0){
            newVal = value % 10;
            palindromeValue = palindromeValue*10 + newVal;
            value = value/10;
            }
            if(palindromeValue == x){
                return true;
            }
            else{
                return false;
            }
        }
        else{
            return false;
        }
        
    }
}