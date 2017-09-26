<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: maxleo
  Date: 17-9-18
  Time: 下午9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>User List | Excellent House</title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    Datatables
    <link href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
    <style>
        td {
            font-size: medium;
        }
    </style>
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="mIndex.html" class="site_title"><i class="fa fa-home"></i> <span>Excellent House</span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <img src="../images/admin/adminImg.jpg" alt="..." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>Welcome,</span>
                        <h2>Admin</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br />

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <h3>管理</h3>
                        <ul class="nav side-menu">
                            <li><a><i class="fa fa-users"></i> 用户管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/manageUser/newUser">新增用户</a></li>
                                    <li><a href="/manageUser/list">用户列表</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-building"></i> 楼盘管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="general_elements.html">新增楼盘</a></li>
                                    <li><a href="media_gallery.html">楼盘列表</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-home"></i> 租房管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="tables.html"> 新增房源 </a></li>
                                    <li><a href="tables_dynamic.html">房源列表</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-bed"></i> 二手房管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="chartjs.html">新增二手房</a></li>
                                    <li><a href="chartjs2.html">二手房列表</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-tachometer"></i>装修管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a>装修实例管理<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li class="sub_menu"><a href="level2.html">装修实例列表</a>
                                            </li>
                                            <li><a href="#level2_1">新增装修实例</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a>装修公司管理<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li class="sub_menu"><a href="level2.html">装修公司列表</a>
                                            </li>
                                            <li><a href="#level2_1">新增装修公司</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a>装修设计师管理<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li class="sub_menu"><a href="level2.html">装修设计师列表</a>
                                            </li>
                                            <li><a href="#level2_1">新增装修设计师</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>


                </div>
                <!-- /sidebar menu -->


            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <img src="../images/admin/adminImg.jpg" alt="">John Doe
                            </a>

                        </li>


                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>Excellent House Users Management
                        </h3>
                    </div>
                </div>

                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Users</h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <table id="datatable" class="table table-striped table-bordered">
                                    <thead>
                                    <tr>
                                        <th>user ID</th>
                                        <th>IMG</th>
                                        <th>user name</th>
                                        <th>E-mail</th>
                                        <th>gender</th>
                                        <th>phone number</th>
                                        <th>E-mail confirm</th>
                                        <th>valid</th>
                                        <th>state</th>
                                        <th>create time</th>
                                        <th style="width: 10%">Operation</th>
                                    </tr>
                                    </thead>


                                    <tbody>
                                    <c:forEach items="${userAOList}" var="user">
                                        <tr>
                                            <td>${user.entity.userId}</td>
                                            <td><img src="${user.pictureList.get(0).pictureAddress}" class="avatar"></td>
                                            <td>${user.entity.name}</td>
                                            <td>${user.entity.email}</td>
                                            <td>${user.entity.gender}</td>
                                            <td>${user.entity.phoneNumber}</td>
                                            <td>${user.entity.isEmailConfirm}</td>
                                            <td>${user.entity.isVaild}</td>
                                            <td>${user.entity.state}</td>
                                            <td>${user.entity.createTime}</td>
                                            <td>
                                                <%--<a class="edit" data-id="${user.entity.userId}" href="#"  style="color: #00aeef">Edit</a>--%>
                                                <%--<a class="delete" data-id="${user.entity.userId}" href="#" style="color: red">Delete</a>--%>
                                                    <a data-id="${user.entity.userId}" href="/manageUser/detail?userId=${user.entity.userId}" class="edit btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                    <a data-id="${user.entity.userId}" class="delete btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                            </td>
                                        </tr>
                                    </c:forEach>


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
            <div class="pull-right">
                Excellent House by MaxLeo, August, WZC
            </div>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
    </div>
</div>

<!-- jQuery -->
<script src="../vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="../vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="../vendors/nprogress/nprogress.js"></script>
<!-- iCheck -->
<script src="../vendors/iCheck/icheck.min.js"></script>
<!-- Datatables -->
<script src="../vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="../vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="../vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="../vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script src="../vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="../vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="../vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="../vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script src="../vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="../vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="../vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<script src="../vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
<script src="../vendors/jszip/dist/jszip.min.js"></script>
<script src="../vendors/pdfmake/build/pdfmake.min.js"></script>
<script src="../vendors/pdfmake/build/vfs_fonts.js"></script>

<!-- Custom Theme Scripts -->
<script src="../build/js/custom.min.js"></script>

<script type="text/javascript">
    $(function () {

        $(".edit").click(function () {
            var id = $(this).attr("data-id");

            if (1 == 2) {

            }
            else {
                var data = {
                    "userId": id
                };

                $.ajax({
                    type:'post',
                    url:'/manageUser/edit',
                    dataType:'json',
                    data:data
                });
            }
        });

        $(".delete").click(function () {
            var id = $(this).attr("data-id");
            if (1 == 2) {

            }
            else {
                var data = {
                    "userId" : id
                };

                $.ajax({
                    type:'post',
                    url:'/manageUser/delete',
                    dataType:'json',
                    data:data,
                    success:function (data) {
                        if (data.result == "success") {
                            alert("success");
                            window.location.reload();
                        }else {
                            alert("fail");
                        }
                    }
                });
            }
        });
    })
</script>

</body>
</html>
