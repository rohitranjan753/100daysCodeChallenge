class Solution {
    public int singleNumber(int[] nums) {
        int digitCounter=0;
        int loopCounter=0;
        int singleDigit=0;
        int innerLoop=0;
        if(nums.length == 1){
            return nums[0];
        }
        else{
            for(loopCounter=0;loopCounter<nums.length;loopCounter++){
                singleDigit=nums[loopCounter];
                for(innerLoop=0;innerLoop<nums.length;innerLoop++){
                    if(nums[loopCounter] == nums[innerLoop]){
                        digitCounter++;
                    }
                    if(digitCounter == 2){
                    break;
                    }
                }
                if(digitCounter != 2){
                    break;
                }
                else{
                    digitCounter=0;
                }
            }
            return singleDigit;
        }
    }
}