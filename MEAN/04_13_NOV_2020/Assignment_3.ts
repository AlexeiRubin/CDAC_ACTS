//Write a function to find the sum of squares of even numbers upto N.
//N is passed as argument to typescript function

function sumOfSquares(num:number) {
    var sum:number = 0;
			for(var i:number = 2 ; i <= num ; i += 2) {
					sum += Math.pow(i, 2);
			}
			return sum;
}

console.log(sumOfSquares(7));