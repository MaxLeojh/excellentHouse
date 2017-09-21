function btnClick(btn) {
    var toEdit = btn.value == '编辑';
    $('#dvInput')[toEdit ? 'removeClass' : 'addClass']('readonly').find(':input').attr('readonly', toEdit ? false : true);
    btn.value = toEdit ? '保存' : '编辑';
    if (!toEdit) {//保存的ajax代码
        $('.input-info').css('border','none');

        $('.save-btn').css('background-color',' #2a67cd');
        $('.input-sex').attr("disabled", true);
    }else { //编辑
     $('.input-info').css('border','1px solid #e5e5e5');
     $('.save-btn').css('background-color','green');
     $('.input-sex').attr("disabled", false);
    }
}