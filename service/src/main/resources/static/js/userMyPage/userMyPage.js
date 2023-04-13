function openNewInfoBox() {
    var originalInformation = document.getElementById("originalInformation");
    var newUserInformationForm = document.getElementById("newUserInformationForm");

    originalInformation.style.display = "none";
    newUserInformationForm.style.display = "block";
}

function hideNewInfoBox() {
    var originalInformation = document.getElementById("originalInformation");
    var newUserInformationForm = document.getElementById("newUserInformationForm");

    originalInformation.style.display = "block";
    newUserInformationForm.style.display = "none";
}

function openNewPassBox() {
    var modifyPass = document.getElementById("modifyPass");
    var modifyInfo = document.getElementById("modifyInfo");
    var newPasswordForm = document.getElementById("newPasswordForm");

    modifyPass.style.display = "none";
    modifyInfo.style.display = "none";
    newPasswordForm.style.display = "block";
}

function hideNewPassBox() {
    var modifyPass = document.getElementById("modifyPass");
    var modifyInfo = document.getElementById("modifyInfo");
    var newPasswordForm = document.getElementById("newPasswordForm");
    var newPassword = document.getElementById("newPassword");
    var reNewPassword = document.getElementById("reNewPassword");


    modifyPass.style.display = "";
    modifyInfo.style.display = "";
    newPassword.value = "";
    reNewPassword.value = "";
    newPasswordForm.style.display = "none";
}


function togglePass() {
    var PassToggle = document.getElementById("PassToggle");
    var newPassword = document.getElementById("newPassword");

    if (newPassword.getAttribute("type") == "password") {
        newPassword.setAttribute("type", "text");
        PassToggle.setAttribute("src", "/images/passwordHide.png")
    } else {
        newPassword.setAttribute("type", "password");
        PassToggle.setAttribute("src", "/images/passwordShow.png")
    }
}


function toggleRePass() {
    var rePassToggle = document.getElementById("rePassToggle");
    var reNewPassword = document.getElementById("reNewPassword");

    if (reNewPassword.getAttribute("type") == "password") {
        reNewPassword.setAttribute("type", "text");
        rePassToggle.setAttribute("src", "/images/passwordHide.png")
    } else {
        reNewPassword.setAttribute("type", "password");
        rePassToggle.setAttribute("src", "/images/passwordShow.png")
    }
}



var newInfoForm = document.getElementById("newInfoForm");
newInfoForm.addEventListener('submit', function (event) {
    var name = document.querySelector("#newName");
    var nickName = document.querySelector("#newNickName");
    var zipcode = document.querySelector("#zipcode");
    var address2 = document.querySelector("#address2");

    if ($("#newName").val() == "") {
        alert("이름을 입력해주세요.");
        name.scrollIntoView({behavior: "smooth", block: "start"});
        name.focus();
        event.preventDefault();
        return false;
    }
    if($("#newNickName").val() == "") {
        alert("닉네임을 입력해주세요.");
        nickName.scrollIntoView({behavior: "smooth", block: "start"});
        nickName.focus();
        event.preventDefault();
        return false;
    }
    if($("#zipcode").val() == "") {
        alert("주소를 검색해주세요.");
        zipcode.scrollIntoView({behavior: "smooth", block: "start"});
        zipcode.focus();
        event.preventDefault();
        return false;
    }
    if($("#address2").val() == "") {
        alert("상세주소를 입력해주세요.");
        address2.scrollIntoView({behavior: "smooth", block: "start"});
        address2.focus();
        event.preventDefault();
        return false;
    }


});


var newPassForm = document.getElementById("newPassForm");

newPassForm.addEventListener('submit', function (event) {
    var originalPassWord = document.getElementById("originalPassWord");
    var newPassword = document.getElementById("newPassword");
    var reNewPassword = document.getElementById("reNewPassword");

    if (reNewPassword.value != newPassword.value) {
        alert("비밀번호가 일치하지 않습니다.");
        reNewPassword.focus();
        event.preventDefault();
        return false;
    }
    if (newPassword.value === originalPassWord.value) {
        alert("기존 비밀번호와 일치합니다.");
        event.preventDefault();
        return false;
    }

});




var profile;
$("#file").on('change', function(e) {
    var file = e.target.files;
    var fileArr = Array.prototype.slice.call(file);
    fileArr.forEach(function(a) {
        profile = a;
        var reader = new FileReader();

        reader.onload = function(z) {
            $("#userProfileImage").attr("src", z.target.result);
        };

        reader.readAsDataURL(a);
    });
});

function showNewProfileBox() {
    var newProfileBox = document.getElementById("newProfileBox");
    var changeProfileBtn = document.getElementById("changeProfileBtn");
    newProfileBox.style.display = "flex";
    changeProfileBtn.style.display = "none";
}
function cancelNewProfile() {
    var newProfileBox = document.getElementById("newProfileBox");
    var changeProfileBtn = document.getElementById("changeProfileBtn");
    var originalProfile = document.getElementById("originalProfile");
    var userProfileImage = document.getElementById("userProfileImage");

    userProfileImage.setAttribute("src", originalProfile.value);
    newProfileBox.style.display = "none";
    changeProfileBtn.style.display = "block";
}

function deleteProfile() {
    var userProfileImage = document.getElementById("userProfileImage");
    var uniqueImageName = document.getElementById("uniqueImageName");
    if (uniqueImageName) {
        uniqueImageName.value = "이미지삭제"
    }
    userProfileImage.setAttribute("src", "/images/basicProfile.png");

}

