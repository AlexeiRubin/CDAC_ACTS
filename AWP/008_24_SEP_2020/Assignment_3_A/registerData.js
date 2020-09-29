function displayData() {
    var firstName = document.getElementById('firstName').value;
    var lastName = document.getElementById('lastName').value;
    var emailId = document.getElementById('emailId').value;
    var radios = document.getElementsByName('gender');
    for (var i = 0, length = radios.length; i < length; i++) {
        if (radios[i].checked) {
            var gender = radios[i].value;
            break;
        }
    }
    var phoneNumber = document.getElementById('phoneNumber').value;
    var dateOfBirth = document.getElementById('dateOfBirth').value;

    alert(
        "First Name : " + firstName +
        "\nLast Name : " + lastName +
        "\nGender : " + gender +
        "\nEmail Id : " + emailId +
        "\nPhone Number : " + phoneNumber +
        "\nDate of Birth : " + dateOfBirth
    );
}