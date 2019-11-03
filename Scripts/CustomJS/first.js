function Val() {
    var store = "";
    store += CheckFName();
    store += CheckLName();
    store += CheckSalary();
    if (store != "") {
        alert(store);
        return false;
    }
}
function CheckFName() {
    var TFN = document.getElementById("fname");
    if (TFN.value == "") {
        return "Enter your FirstName\n";
    }
    else {
        return "";
    }
}
function CheckLName() {
    var TLN = document.getElementById("lname");
    if (TLN.value == "") {
        return "Enter your LastName\n";
    }
    else {
        return "";
    }
}
function CheckSalary() {
    var Ts = document.getElementById("salary");
    if (Ts.value == "") {
        return "Enter your Salary\n";
    }
    else {
        return "";
    }
}
