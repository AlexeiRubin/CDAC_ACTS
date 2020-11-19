//Write a typescript file that has a function strJoin().
//This function must take first argument as separator and any number of subsequent string arguments.
//The function must sort the input strings and then return a string that is a concatenated string,
//with each input string separated by separator
//eg : strJoin("#", "LOL", "LMAO", "ROTFL") returns LMAO#LOL#ROTFL

function strJoin(symbol:string, ...strs:string[]):string {
    var result:string = null;

    strs.sort();

    result = strs.join(symbol);

    return result;
}

console.log(strJoin("#", "LOL", "LMAO", "ROTFL"));