var users = [
    {
        USERNAME: "lol",
        PASSWORD: "lol",
        EMAIL: "lol@lol.com",
        PHONE_NO: "717"
    },
    {
        USERNAME: "lmao",
        PASSWORD: "lmao",
        EMAIL: "lmao@lmao.com",
        PHONE_NO: "727"
    },
    {
        USERNAME: "rofl",
        PASSWORD: "rofl",
        EMAIL: "rofl@rofl.com",
        PHONE_NO: "737"
    },
    {
        USERNAME: "roflmao",
        PASSWORD: "roflmao",
        EMAIL: "roflmao@roflmao.com",
        PHONE_NO: "747"
    },
    {
        USERNAME: "csl",
        PASSWORD: "csl",
        EMAIL: "csl@csl.com",
        PHONE_NO: "757"
    },
    {
        USERNAME: "haha",
        PASSWORD: "haha",
        EMAIL: "haha@haha.com",
        PHONE_NO: "767"
    },
    {
        USERNAME: "hah",
        PASSWORD: "hah",
        EMAIL: "hah@hah.com",
        PHONE_NO: "777"
    }
];

function generateTableHead(table, data) {
    let thead = table.createTHead();
    let row = thead.insertRow();
    
    for (let key of data) {
        let th = document.createElement("th");
        let text = document.createTextNode(key);
        
        th.appendChild(text);
        row.appendChild(th);
    }
}

function generateTable(table, data) {
    for (let element of data) {
        let row = table.insertRow();
        
        for (key in element) {
            let cell = row.insertCell();
            let text = document.createTextNode(element[key]);
            
            cell.appendChild(text);
        }
    }
}

let table = document.querySelector("table");
let data = Object.keys(users[0]);

generateTable(table, users);
generateTableHead(table, data);