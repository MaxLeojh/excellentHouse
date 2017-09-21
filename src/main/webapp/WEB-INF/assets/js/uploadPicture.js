function xmTanUploadImg(obj) {

    var fl=obj.files.length;
    for(var i=0;i<fl;i++){
        var file=obj.files[i];
        var reader = new FileReader();

        //读取文件过程方法

        reader.onloadstart = function (e) {
            console.log("开始读取....");
        };
        reader.onprogress = function (e) {
            console.log("正在读取中....");
        };
        reader.onabort = function (e) {
            console.log("中断读取....");
        };
        reader.onerror = function (e) {
            console.log("读取异常....");
        };
        reader.onload = function (e) {
            console.log("成功读取....");

            var imgstr='<img class="upload_img img-rounded" data-action="zoom" src="'+e.target.result+'"/>';
            var oimgbox=document.getElementById("imgboxid");
            var ndiv=document.createElement("div");

            var clear=document.createElement("div");
            // var  cssStr=" position: absolute; margin-left: 130px; margin-top:-147px;"


            ndiv.innerHTML=imgstr;
            ndiv.className="img-div";
            // ndiv.classList.add("col-lg-2");
            oimgbox.appendChild(ndiv);


            clear.className="icon-cha";
            clear.classList.add("iconfont");
            clear.classList.add("remove");
            // clear.style.cssText = cssStr;
            clear.onclick= function(){
                         var button = $(this);
               button.parent().remove();
            };
            ndiv.appendChild(clear);
        };
        reader.readAsDataURL(file);
    }
}
