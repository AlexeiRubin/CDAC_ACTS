//Write a typescript function that takes variable array of strings.
//The array holds many web site names.
//Eg: www.google.com, www.msn.com, www.amazon.co.in, in.answers.yahoo.com,
// en.m.wikipedia.com, codehs.gitbooks.io, www.coderanch.com etc.
//Search for all sites that begin with “www” and display the total number of such sites.
//Eg: for above eg, total is 4.

import { count } from "console"

function wwwMatcher(...websites: string[]) {
    var count: number = 0;
    var re = /^w{3}/;
    for(var i = 0 ; i < websites.length ; ++i) {
        if(websites[i].search(re) != -1)
            ++count;
    }
    console.log(count);
}

wwwMatcher("www.google.com", "www.msn.com", "www.amazon.co.in", "in.answers.yahoo.com", "en.m.wikipedia.com", "codehs.gitbooks.io", "www.coderanch.com");