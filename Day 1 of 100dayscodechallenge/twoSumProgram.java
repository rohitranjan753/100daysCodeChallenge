// find sum of two numbers from array that will be equal to target and return the index.
//Program started at 7:00PM completed at 07:56PM on 29/09/2022
//Rohit Ranjan www.linkedin.com/in/rohitranjan753

class twoSumProgram {
    public int[] twoSum(int[] nums, int target) {
        int returnArray[] = new int[2];
        int flag=0;
        for(int outerCounter=0;outerCounter<nums.length;outerCounter++){
            int firstNumber = nums[outerCounter];
            for(int innerCounter=outerCounter+1;innerCounter<nums.length;innerCounter++){
                int secondNumber=nums[innerCounter];
                if((firstNumber+secondNumber) == target){
                    returnArray[0]=outerCounter;
                    returnArray[1]=innerCounter;
                    flag=1;
                    break;
                }
            }
            if(flag==1){
                break;
            }
        }
        return returnArray;
    }
}