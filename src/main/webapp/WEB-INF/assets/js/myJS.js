function check_email(){
    var temp = document.getElementById("input-email");
                //对电子邮件的验证
               var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
               if(!myreg.test(temp.value))
            {
                 // alert('提示\n\n请输入有效的E_mail！');
                document.getElementById("email-error").style.display="inline";
                document.getElementById("email-correct").style.display="none";
                        myreg.focus();
                       return false;
            }
            else {
                   document.getElementById("email-error").style.display="none";
                   document.getElementById("email-correct").style.display="inline";
                    return true;
               }
}
function check_username(){
    var temp = document.getElementById("input_username");
    if(temp.value.length<3){
        document.getElementById("username-error").style.display="inline";
        document.getElementById("username-correct").style.display="none";
        return false;
    }
    else {
        document.getElementById("username-error").style.display="none";
        document.getElementById("username-correct").style.display="inline";
        return true;
    }
}
function check_password() {
    var password = document.getElementById("password");
    var confirm_password = document.getElementById("confirm-password");
    if(password.value.length<3){
        document.getElementById("password-error2").style.display="inline";
        document.getElementById("password-correct").style.display="none";
        document.getElementById("confirm-password-correct").style.display="none";
        return false;
    }else {
        if (password.value!=confirm_password.value){
            document.getElementById("password-error").style.display="inline";
            document.getElementById("password-error2").style.display="none";
            document.getElementById("password-correct").style.display="none";
            document.getElementById("confirm-password-correct").style.display="none";
            return false;
        }else {
            document.getElementById("password-correct").style.display="inline";
            document.getElementById("confirm-password-correct").style.display="inline";
            document.getElementById("password-error2").style.display="none";
            document.getElementById("password-error").style.display="none";
            return true;
        }
    }

}
function check_mobile(str)
{
    var re=/^1\d{10}$/;
    if(re.test(str))
    {
       // alert("正确！");
        document.getElementById("mobile-error").style.display="none";
        document.getElementById("mobile-correct").style.display="inline";
        return true;
    }else
    {
       // alert("错误！");
        document.getElementById("mobile-error").style.display="inline";
        return false;
    }
}

