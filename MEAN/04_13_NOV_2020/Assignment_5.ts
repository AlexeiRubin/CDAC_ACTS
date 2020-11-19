//Write a typescript file that has a function that accepts an array of numbers.
//The function must loop through array, find square of each element and return the array with new elements.
//var squareArray = arraySquare(original-array);

function arraySquare(...nums:number[]):number[] {
    
    for(var i:number = 0 ; i < nums.length ; ++i) {
        nums[i] *= nums[i];
    }
    return nums;
}

var squareArray = arraySquare(1, 2, 3, 4, 5, 6, 7);

console.log(squareArray);