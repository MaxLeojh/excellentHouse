/**
 * Created by August on 2017/9/18.
 */
$(function () {
    $("#logout").click(function () {

        var userId = $(this).attr("data-id");

        $.ajax({
            type:'post',
            url:'../user/logout',
            dataType:'json',
            data:userId,

            success:function (data) {
                if(data.result == "success"){
                    alert("注销成功");
                    window.location.href = '/';
                }else{
                    alert("注销失败...");
                }
            }

        })
    })
})