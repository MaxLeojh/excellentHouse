function btnClick(btn) {
    var toEdit = btn.value == '编辑';
    $('#dvInput')[toEdit ? 'removeClass' : 'addClass']('readonly').find(':input').attr('readonly', toEdit ? false : true);
    btn.value = toEdit ? '保存' : '编辑';
    if (!toEdit) {//保存的ajax代码
        $('.input-info').css('border','none');
        $('.save-btn').css('background-color',' #2a67cd');
        $('.input-sex').attr("disabled", true);

        // var id = $("#userName").attr("data-id");
        var name = $("#editName").val();
        var phone = $("#editPhone").val();
        var sex = 0;

        if ($('input[name="sex"]:checked').val() === "男") {
            sex = 1;
        }

        // alert("id = " + id);
        // alert("name = " + name);
        // alert("phone = " + phone);
        // alert("sex = " + sex);

        var data = {
            // 'id' : id,
            'name' : name,
            'phone' : phone,
            'sex' : sex
        }

        $.ajax({
            type:'post',
            url:'../user/update',
            dataType:'json',
            data:data,

            success:function (data) {
                if(data.result == "success"){
                    alert("保存成功");
                    window.location.reload();
                }else{
                    alert("保存失败...");
                }
            }
        });
    }
    else { //编辑
     $('.input-info').css('border','1px solid #e5e5e5');
     $('.save-btn').css('background-color','green');
     $('.input-sex').attr("disabled", false);
    }
}