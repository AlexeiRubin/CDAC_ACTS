//Write a typescript program to find sum of digits of given five-digit number.

import * as readline from 'readline'

var io =  readline.createInterface({
	input:process.stdin,
	output:process.stdout
})

function sumOfDigits(num:number):number {
    var sum:number = 0;
    var r:number = 0;

    while(num > 0) {
        r = (num % 10);
        sum += r;
        num = Math.floor(num / 10);
    }
    return sum;
}

io.question('Enter a number\n', (input) => {
	console.log(sumOfDigits(parseInt(input)))
	io.close()
})