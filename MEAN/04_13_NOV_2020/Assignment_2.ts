//Write a function pow(x,y) that calculates xy. Do not use the Math predefined object

function powCalc(x:number, y:number) {
    var res:number = 1;
    for(var i:number = 0 ; i < y ; ++i) {
        res *= x;
    }
    return res;
}

console.log(powCalc(4, 5));