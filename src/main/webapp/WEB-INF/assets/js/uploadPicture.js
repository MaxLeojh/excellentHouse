function xmTanUploadImg(obj) {

    var fl=obj.files.length;
    for(var i=0;i<fl;i++){
        var file=obj.files[i];
        var reader = new FileReader();

        //读取文件过程方法

        reader.onloadstart = function (e) {
            console.log("开始读取....");
        }
        reader.onprogress = function (e) {
            console.log("正在读取中....");
        }
        reader.onabort = function (e) {
            console.log("中断读取....");
        }
        reader.onerror = function (e) {
            console.log("读取异常....");
        }
        reader.onload = function (e) {
            console.log("成功读取....");

            var imgstr='<img style="width:100px;height:100px;" src="'+e.target.result+'"/>';
            var oimgbox=document.getElementById("imgboxid");
            var ndiv=document.createElement("div");

            var clear=document.createElement("div");
            var  cssStr=" position: absolute; margin-left: 82px; margin-top:-95px;"


            ndiv.innerHTML=imgstr;
            ndiv.className="img-div";
            ndiv.className="col-lg-4";
            oimgbox.appendChild(ndiv);


            clear.className="icon-cha";
            clear.classList.add("iconfont");
            clear.classList.add("remove")
            clear.style.cssText = cssStr;
            ndiv.appendChild(clear);
        }
        reader.readAsDataURL(file);
    }
    $(function() {
        $(".remove").click(function(){
            var button = $(this);
            button.parent().remove();
        });
    });
}