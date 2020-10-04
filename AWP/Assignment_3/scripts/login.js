function validateLogin() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    if(username == "lol" && password == "lol") {
        alert("Logged in Successfully");
        return true;
    }
    return false;
}