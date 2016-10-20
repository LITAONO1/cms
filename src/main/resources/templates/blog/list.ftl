<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <link rel="shortcut icon" href="blog/images/favicon_1.ico">
        <title>狂魔穴窟</title>
        <link href="blog/plugins/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">
        <link href="blog/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="blog/css/core.css" rel="stylesheet" type="text/css">
        <link href="blog/css/icons.css" rel="stylesheet" type="text/css">
        <link href="blog/css/components.css" rel="stylesheet" type="text/css">
        <link href="blog/css/pages.css" rel="stylesheet" type="text/css">
        <link href="blog/css/menu.css" rel="stylesheet" type="text/css">
        <link href="blog/css/responsive.css" rel="stylesheet" type="text/css">
        <script src="blog/js/modernizr.min.js"></script>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>
        
        <header id="topnav">
            <!-- 顶部导航栏 -->
            <div class="topbar-main">
                <div class="container">

                    <!-- LOGO -->
                    <div class="topbar-left">
                        <a href="index.html" class="logo"><i class="md md-terrain"></i> <span>狂魔穴窟</span></a>
                    </div>
                    <!-- End Logo container-->

                    <div class="menu-extras">
                        <ul class="nav navbar-nav navbar-right pull-right">
                            <!-- 实际开发中登录和头像二者选择其一 -->
                            <li> <a href="#" class="waves-effect waves-light">登录</a> </li>
                            <!-- <li class="dropdown user-box">
                                <a href="" class="dropdown-toggle waves-effect waves-light profile " data-toggle="dropdown" aria-expanded="true">
                                    <img src="assets/images/users/avatar-1.jpg" alt="user-img" class="img-circle user-img">
                                    <div class="user-status away"><i class="zmdi zmdi-dot-circle"></i></div>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="javascript:void(0)"><i class="md md-face-unlock"></i> Profile</a></li>
                                    <li><a href="javascript:void(0)"><i class="md md-settings"></i> Settings</a></li>
                                    <li><a href="javascript:void(0)"><i class="md md-lock"></i> Lock screen</a></li>
                                    <li><a href="javascript:void(0)"><i class="md md-settings-power"></i> Logout</a></li>
                                </ul>
                            </li> -->
                        </ul>
                        <div class="menu-item">
                            <!-- Mobile menu toggle-->
                            <a class="navbar-toggle">
                                <div class="lines">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </a>
                            <!-- End mobile menu toggle-->
                        </div>
                    </div>
                </div>
            </div>
            <!-- 顶部导航栏结束 -->

            <!-- 菜单 -->
            <div class="navbar-custom">
                <div class="container">
                    <div id="navigation">
                        <ul class="navigation-menu">
                            <#list categoryList as category>
                                <#if (category.url == action) >
                                    <li class="active">
                                <#else>
                                    <li>
                                </#if>
                                    <a href=" ${category.url} " class="waves-effect"><i class=" ${category.icon} "></i> <span> ${category.name} </span> </a>
                                </li>
                            </#list>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 菜单结束 -->
        </header>

        <div class="wrapper">
            <div class="container">
                <!-- 面包屑导航 -->
                <!-- <div class="row">
                    <div class="col-sm-12">
                        <h5 class="page-title">首页 / android</h5>
                    </div>
                </div> -->
                <!-- 面包屑导航结束 -->

                <div class="row">
                    <!-- android -->
                    <div class="col-lg-12">
                        <div class="panel panel-border panel-inverse">
                            <div class="panel-body">
                                <div class="inbox-widget">

                                    <#list articles as article >
                                        <a href="${action}/${article.id}" target="_blank" class="waves-effect" style="display: block">
                                            <div class="inbox-item" style="padding: 10px">
                                                <p class="inbox-item-author"> ${article.name} </p>
                                                <p class="inbox-item-text"> ${article.summary} ... </p>
                                                <p class="inbox-item-date"> ${article.createDate} </p>
                                            </div>
                                        </a>
                                    </#list>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- android结束 -->
                </div>

                <!-- Footer -->
                <footer class="footer text-right">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-6">
                                © litaono1.cn 2016 | 皖ICP备16001149号-1
                            </div>
                            <div class="col-xs-6">
                                <ul class="pull-right list-inline m-b-0">
                                    <li>
                                        <a href="#">About</a>
                                    </li>
                                    <li>
                                        <a href="#">Help</a>
                                    </li>
                                    <li>
                                        <a href="#">Contact</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- End Footer -->

            </div>
            <!-- end container -->
        </div>

        <!-- jQuery  -->
        <script src="blog/js/jquery.min.js"></script>
        <script src="blog/js/bootstrap.min.js"></script>
        <script src="blog/js/detect.js"></script>
        <script src="blog/js/fastclick.js"></script>
        <script src="blog/js/jquery.blockUI.js"></script>
        <script src="blog/js/waves.js"></script>
        <script src="blog/js/wow.min.js"></script>
        <script src="blog/js/jquery.nicescroll.js"></script>
        <script src="blog/js/jquery.scrollTo.min.js"></script>
        <!-- App js -->
        <script src="blog/js/jquery.app.js"></script>
        <!-- counters  -->
        <script src="blog/plugins/waypoints/lib/jquery.waypoints.js"></script>
        <script src="blog/plugins/counterup/jquery.counterup.min.js"></script>
        <!-- sweet alert  -->
        <script src="blog/plugins/sweetalert/dist/sweetalert.min.js"></script>
    </body>
</html>