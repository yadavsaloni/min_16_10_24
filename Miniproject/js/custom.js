
function deletedata(id) {
    if (confirm("Are you sure want to delete?this data will not recover")) {
        window.location.href ="sliders.aspx?id=" + id;

    }
    
}

$(document).ready(function () {
   // let table = new DataTable('#myTable');
    //  $("#form1").validate();
    $("#uploadicon").click(function () {
        $("#cardrepeater_profile_0").click();
    });

    $(".removeicon").click(function () {
        if (confirm("Are you sure want to delete?"))
        {
            window.location.href = "userprofile.aspx?action=removepic";
        }
    })
    //for box 1
    $("#txtotp1").keypress(function (e) {
        if($(this).val().length == 1) {
            e.preventDefault();
        }

    });

    //for box 2
    $("#txtotp2").keypress(function (e) {
        if ($(this).val().length == 1) {
            e.preventDefault();
        }

    });

    //for box 3
    $("#txtotp3").keypress(function (e) {
        if ($(this).val().length == 1) {
            e.preventDefault();
        }

    });

    //for box 4
    $("#txtotp4").keypress(function (e) {
        if ($(this).val().length == 1) {
            e.preventDefault();
        }

    });


})
function deleteuser(id) {
    if (confirm("are you sure want to delete? you will not able to recover this data."))
    {
        window.location.href = "users.aspx?id=" + id;
    }
}


function validateotp()
{
    var otp1 = $("#txtotp1").val();
    var otp2 = $("#txtotp2").val();
    var otp3 = $("#txtotp3").val();
    var otp4 = $("#txtotp4").val();

    if (otp1.length == 1 && otp2.length == 1 && otp3.length == 1 && otp4.length == 1)
    {
        return true;
    }
    else
    {
        alert("OTP Input Format Invalid");
        return false;
    }

}

function uploadpic(pic) {
   
        $("#cardrepeater_btnpicupload_0").click();
}









