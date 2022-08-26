
$(document).ready(function () {
    document.getElementById("btnChange").disabled = true;
    if (document.getElementById("message") != null) {
        document.getElementById("message").style.display = "none";

        var chnge_password = document.getElementById("chnge_password");
        chnge_password.onfocus = function () {
            document.getElementById("message").style.display = "block";
        }

        chnge_password.onblur = function () {
            document.getElementById("message").style.display = "none";
        }

        chnge_password.onkeyup = function () {
            //Validate length
            if (chnge_password.value.length >= 8) {
                document.getElementById("idlength").style.color = "green";
            } else {
                document.getElementById("idlength").style.color = "red";
            }
            if (chnge_password.value.match(/[a-z]/g)) {
                document.getElementById("idlowercase").style.color = "green";
            } else {
                document.getElementById("idlowercase").style.color = "red";
            }
            if (chnge_password.value.match(/[A-Z]/g)) {
                document.getElementById("iduppercase").style.color = "green";
            } else {
                document.getElementById("iduppercase").style.color = "red";
            }
            if (chnge_password.value.match(/[0-9]/g)) {
                document.getElementById("idnumber").style.color = "green";
            } else {
                document.getElementById("idnumber").style.color = "red";
            }
            if (chnge_password.value.match(/([!,%,&,@,#,$,^,*,?,_,~])/g)) {
                document.getElementById("idcharecter").style.color = "green";
            } else {
                document.getElementById("idcharecter").style.color = "red";
            }
            if (chnge_password.value.length >= 8 && chnge_password.value.match(/[a-z]/g) && chnge_password.value.match(/[A-Z]/g) && chnge_password.value.match(/[0-9]/g) && chnge_password.value.match(/([!,%,&,@,#,$,^,*,?,_,~])/g)) {
                document.getElementById("btnChange").disabled = false;
            }
            else {
                document.getElementById("btnChange").disabled = true;
            }
        }
    }
});
