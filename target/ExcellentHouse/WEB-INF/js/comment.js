/**
 * Created by August on 2017/9/20.
 */
//提交Post
$(function () {
    $("#submitPost").click(function () {

        var userId = $("#userName").attr("data-id");

        if (userId == null) {
            alert("请先登录！");
            return;
        }

        var entityId = $(this).attr("data-id");
        var entityType = $(this).attr("data-type");
        var contains = $("#postInfo").val();

        if (contains == null) {
            alert("请输入内容！");
            return;
        }

        var data = {
            'userId' : userId,
            'entityId' : entityId,
            'entityType' : entityType,
            'contains' : contains
        }

        $.ajax({
            type:'post',
            url:'../comment/post',
            dataType:'json',
            data:data,

            success:function (data) {
                if(data.result == "success"){
                    alert("评论成功");
                    window.location.reload();
                }else{
                    alert("评论失败...");
                }
            }

        })
    })
})

//提交Reply
$(function () {
    $(".submitReply").click(function () {

        var userId = $("#userName").attr("data-id");

        if (userId == null) {
            alert("请先登录！");
            return;
        }

        var postId = $(this).attr("data-id");
        var contains = $(this).parent().find("#replyInfo").val();

        if (contains == null) {
            alert("请输入内容！");
            return;
        }

        var data = {
            'userId' : userId,
            'postId' : postId,
            'contains' : contains
        }

        $.ajax({
            type:'post',
            url:'../comment/reply',
            dataType:'json',
            data:data,

            success:function (data) {
                if(data.result == "success"){
                    alert("回复成功");
                    window.location.reload();
                }else{
                    alert("回复失败...");
                }
            }

        })
    })
})

//提交Reply的Reply
$(function () {
    $(".submitReplyReply").click(function () {

        var userId = $("#userName").attr("data-id");

        if (userId == null) {
            alert("请先登录！");
            return;
        }

        var postId = $(this).attr("data-postId");
        var replyId = $(this).attr("data-id");
        var contains = $(this).parent().find("#replyContains").val();

        if (contains == null) {
            alert("请输入内容！");
            return;
        }

        var data = {
            'userId' : userId,
            'postId' : postId,
            'replyId' : replyId,
            'contains' : contains
        }

        $.ajax({
            type:'post',
            url:'../comment/reply',
            dataType:'json',
            data:data,

            success:function (data) {
                if(data.result == "success"){
                    alert("回复成功");
                    window.location.reload();
                }else{
                    alert("回复失败...");
                }
            }

        })
    })
})