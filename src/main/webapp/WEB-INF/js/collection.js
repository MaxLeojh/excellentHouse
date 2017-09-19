/**
 * Created by August on 2017/9/18.
 */
//增加收藏关系
$(function () {
    $("#collect").click(function () {

        var userId = $("#userName").attr("data-id");
        var entityId = $("#premisesName").attr("data-id");
        var entityType = $("#premisesName").attr("data-type");

        if (userId == null) {
            alert("请先登录！");
            return;
        }

        var data = {
            "userId" : userId,
            "entityId" : entityId,
            "entityType" : entityType
        };

        $.ajax({
            type:'post',
            url:'../user/collect',
            dataType:'json',
            data:data,

            success:function (data) {
                if(data.result == "success"){
                    alert("收藏成功");
                    document.getElementById("collect").style.display="none";
                    document.getElementById("hasCollect").style.display="inline";
                }else{
                    alert("收藏失败..." + data.error_info);
                }
            }
        });
    });
})

//删除收藏关系
$(function () {
    $(".deleteCollection").click(function () {
        var userId = $("#userName").attr("data-id");
        var entityId = $(this).attr("data-id");
        var entityType = $(this).attr("data-type");
        var button = $(this);

        var data = {
            "userId" : userId,
            "entityId" : entityId,
            "entityType" : entityType
        };

        $.ajax({
            type:'post',
            url:'../user/deleteCollection',
            dataType:'json',
            data:data,

            success:function (data) {
                if(data.result == "success"){
                    alert("删除收藏成功");
                    // document.getElementById("collect").style.display="none";
                    // document.getElementById("hasCollect").style.display="inline";
                    // alert("button.parents.val = " + button.parents().attr("class"));
                    button.parent().parent().remove();
                    // var p=button.parents();
                    // button.parents().style.visibility="hidden";
                    // p.fadeOut();
                }else{
                    alert("删除收藏失败..." + data.error_info);
                }
            }
        });
    });
})

