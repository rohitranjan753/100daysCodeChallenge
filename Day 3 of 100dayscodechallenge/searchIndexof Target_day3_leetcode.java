// Given a sorted array of distinct integers and a target value, return the index if the target is found.
// If not, return the index where it would be if it were inserted in order.

//Program started at 8:45 AM completed at 09:30PM on 01/10/2022
//Rohit Ranjan www.linkedin.com/in/rohitranjan753

class searchIndex {
    public int searchInsert(int[] nums, int target) {
        int counter=0;
        int index=0;
        for(counter=0;counter<nums.length;counter++){
            if(nums[counter] == target){
                return counter;
            }
        }
        if(counter == nums.length){
            if(nums.length==1){
                if(nums[0]>target){
                    return 0;
                }
                else{
                    return 1;
                }
            }
        
            for(counter=0;counter<nums.length-1;counter++){
                if(nums[counter] < target && nums[counter+1] > target){
                    return counter+1;
                }
                else if(nums[counter]>target){  //for first element like target=1 and first element is 2.
                    return counter;
                }
            }
        }
        if(counter == nums.length-1){
            index = counter + 1;
        }
        return index;
    }   
}