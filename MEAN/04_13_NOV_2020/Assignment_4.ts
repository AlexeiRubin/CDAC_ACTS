//Write a typescript file that has a function that accepts an array of numbers.
//The function must loop thru array, find the min and max element in the array.
//It must also find the average of all elements in the array.
//Display all values in function only.

function minMaxArray(...nums:number[]) {
    var sum:number = 0;
    var min:number = Number.MAX_VALUE;
    var max:number = Number.MIN_VALUE;
    var avg:number = 0;

    for(var i:number = 0 ; i < nums.length ; ++i) {
        if(nums[i] < min)
            min = nums[i];
        
        if(nums[i] > max)
            max = nums[i];

        sum += nums[i];
    }

    avg = (sum / nums.length);

    console.log("Min Element is : " + min);
    console.log("Max Element is : " + max);
    console.log("Average is : " + avg);
}

minMaxArray(1, 2, 3, 4, 5, 6, 7);