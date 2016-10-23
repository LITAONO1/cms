<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="shortcut icon" href="../blog/images/favicon.ico">
    <title>管理后台</title>
    <link href="../blog/plugins/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">
    <link href="../blog/admin/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="../blog/admin/css/core.css" rel="stylesheet" type="text/css">
    <link href="../blog/admin/css/icons.css" rel="stylesheet" type="text/css">
    <link href="../blog/admin/css/components.css" rel="stylesheet" type="text/css">
    <link href="../blog/admin/css/pages.css" rel="stylesheet" type="text/css">
    <link href="../blog/admin/css/menu.css" rel="stylesheet" type="text/css">
    <link href="../blog/admin/css/responsive.css" rel="stylesheet" type="text/css">
    <script src="../blog/js/modernizr.min.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>


<body class="fixed-left">

<!-- Begin page -->
<div id="wrapper">

    <!-- Top Bar Start -->
    <div class="topbar">
        <!-- LOGO -->
        <div class="topbar-left">
            <div class="text-center">
                <a href="index.html" class="logo"> <span>管理后台</span></a>
            </div>
        </div>

        <div class="navbar navbar-default" role="navigation">
            <div class="container">
                <div class="">
                    <div class="pull-left">
                        <button class="button-menu-mobile open-left">
                            <i class="fa fa-bars"></i>
                        </button>
                        <span class="clearfix"></span>
                    </div>

                    <ul class="nav navbar-nav navbar-right pull-right">
                        <li class="hidden-xs">
                            <a href="#" id="btn-fullscreen" class="waves-effect"><i class="md md-crop-free"></i></a>
                        </li>
                        <li class="dropdown">
                            <a href="" class="dropdown-toggle profile" data-toggle="dropdown" aria-expanded="true">管理员 </a>
                            <ul class="dropdown-menu">
                                <li><a href="javascript:void(0)"><i class="md md-face-unlock"></i> 修改密码</a></li>
                                <li><a href="javascript:void(0)"><i class="md md-settings"></i> 个人资料</a></li>
                                <li><a href="javascript:void(0)"><i class="md md-settings-power"></i> 退出</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="left side-menu">
        <div class="sidebar-inner slimscrollleft">
            <div id="sidebar-menu">
                <#include "./common/menu.ftl">
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="content-page">
        <div class="content">
            <div class="container">


            </div>
        </div>
    </div>
</div>

<!-- jQuery  -->
<script src="../blog/js/jquery.min.js"></script>
<script src="../blog/js/bootstrap.min.js"></script>
<script src="../blog/js/detect.js"></script>
<script src="../blog/js/fastclick.js"></script>
<script src="../blog/js/jquery.slimscroll.js"></script>
<script src="../blog/js/jquery.blockUI.js"></script>
<script src="../blog/js/waves.js"></script>
<script src="../blog/js/wow.min.js"></script>
<script src="../blog/js/jquery.nicescroll.js"></script>
<script src="../blog/js/jquery.scrollTo.min.js"></script>
<script src="../blog/admin/js/jquery.app.js"></script>
<script src="../blog/plugins/moment/moment.js"></script>
<script src="../blog/plugins/waypoints/lib/jquery.waypoints.js"></script>
<script src="../blog/plugins/counterup/jquery.counterup.min.js"></script>
<script src="../blog/plugins/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>