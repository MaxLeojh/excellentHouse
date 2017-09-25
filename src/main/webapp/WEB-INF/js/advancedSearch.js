/**
 * Created by August on 2017/9/25.
 */
/*加载省下拉选*/
$(function () {
    $.ajax({
        type: "post",
        url: "/location/getProvinces",
        success: function (data) {
            for (var i = 0; i < data.length; i++) {
                $('#province_code').append("<option value='" + data[i].cityId + "' >" + data[i].cityName + "</option>");
            }
        },
        error: function () {
            alert("加载省失败");
        }
    });
});
/*加载市下拉选*/
function getCities() {
    var id = $("#province_code").val();
    $("#city_code").empty();
    $("#district_code").empty();
    $("#street_code").empty();
    $.ajax({
        type: "post",
        url: "/location/getCities",
        data: {"id": id},
        success: function (data) {
            $('#city_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
            $('#district_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
            $('#street_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
            for (var i = 0; i < data.length; i++) {
                $('#city_code').append("<option value='" + data[i].cityId + "' >" + data[i].cityName + "</option>");
            }
        },
        error: function () {
            alert("加载市失败");
        }
    });
};
/*加载地区下拉选*/
function getDistricts() {
    var id = $("#city_code").val();
    $("#district_code").empty();
    $("#street_code").empty();
    $.ajax({
        type: "post",
        url: "/location/getDistricts",
        data: {"id": id},
        success: function (data) {
            $('#district_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
            $('#street_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
            for (var i = 0; i < data.length; i++) {
                $('#district_code').append("<option value='" + data[i].cityId + "' >" + data[i].cityName + "</option>");
            }
        },
        error: function () {
            alert("加载区失败");
        }
    });
};
/*加载街道下拉选*/
function getStreets() {
    var id = $("#district_code").val();
    $("#street_code").empty();
    $.ajax({
        type: "post",
        url: "/location/getStreets",
        data: {"id": id},
        success: function (data) {
            $('#street_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
            for (var i = 0; i < data.length; i++) {
                $('#street_code').append("<option value='" + data[i].cityId + "' >" + data[i].cityName + "</option>");
            }
        },
        error: function () {
            alert("加载街道失败");
        }
    });
}