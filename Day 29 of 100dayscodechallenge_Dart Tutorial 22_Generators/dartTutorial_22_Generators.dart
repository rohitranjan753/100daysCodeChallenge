//Date 27/10/2022 01:30 PM

//Dart programming fundamentals
//Topics covered is Generators

void main()  {  
    print("Dart Synchronous Generator Example.");  
    oddNumber(10).forEach(print);   
}  
    // syn* functions returns an iterable  
  
   Iterable<int> oddNumber(int num) sync* {  
    int k = num;  
    while(k >= 0) {  
         if(k%2 == 1) {  
            // 'yield' statement  
            yield k;  
  
                }  
k--;  
}  
} 