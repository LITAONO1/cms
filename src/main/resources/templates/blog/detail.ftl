
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <link rel="shortcut icon" href="/blog/blog/images/favicon.ico">
        <title>狂魔穴窟</title>
        <link href="/blog/blog/plugins/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">
        <link href="/blog/blog/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="/blog/blog/css/core.css" rel="stylesheet" type="text/css">
        <link href="/blog/blog/css/icons.css" rel="stylesheet" type="text/css">
        <link href="/blog/blog/css/components.css" rel="stylesheet" type="text/css">
        <link href="/blog/blog/css/pages.css" rel="stylesheet" type="text/css">
        <link href="/blog/blog/css/menu.css" rel="stylesheet" type="text/css">
        <link href="/blog/blog/css/responsive.css" rel="stylesheet" type="text/css">
        <script src="/blog/blog/js/modernizr.min.js"></script>
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
                        <a href="index.html" class="logo" style="margin-top: 0px; line-height: 60px;">  <span style="color: #ec407a">狂魔穴窟</span></a>
                    </div>
                    <!-- End Logo container-->

                    <div class="menu-extras">
                        <ul class="nav navbar-nav navbar-right pull-right">
                            <!-- 实际开发中登录和头像二者选择其一 -->
                            <#--<li> <a href="#" class="waves-effect waves-light">登录</a> </li>-->
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
                                <#if (category.code == action) >
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

                                    <#if type == "0">
                                        <div style="text-align: center">
                                            <h1> ${article.name} </h1>
                                            <span> ${article.createDate?date} </span>
                                            <span> 嗜血狂魔 </span>
                                        </div>

                                        <div style="font-size: 14px;background: #f5f5f5;padding: 5px;border-radius: 3px;box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.1);margin-top: 10px;margin-bottom: 10px;">
                                            <span>摘要：${article.summary}</span>
                                        </div>

                                        <div style="font-size: 16px;padding: 5px;">
                                        ${article.content}
                                        </div>

                                        <hr>

                                        <div class="row">
                                            <ul class="pager">
                                                <#if article.preId != 0 && article.nextId != 0>
                                                    <li class="previous">
                                                        <a href="${action}/${article.preId}">
                                                            <span style="color: #ec407a"><i class="fa fa-long-arrow-left"></i> 上一页</span>
                                                        </a>
                                                    </li>
                                                </#if>
                                                <#if article.preId != 0 && article.nextId == 0>
                                                    <li class="previous">
                                                        <a href="${action}/${article.preId}" >
                                                            <span style="color: #ec407a"><i class="fa fa-long-arrow-left"></i> 上一页</span>
                                                        </a>
                                                    </li>
                                                </#if>

                                                <#if article.preId != 0 && article.nextId != 0>
                                                    <li class="next">
                                                        <a href="${action}/${article.nextId}">
                                                            <span style="color: #ec407a" class="pull-right">下一页 <i class="fa fa-long-arrow-right"></i></span>
                                                        </a>
                                                    </li>
                                                </#if>
                                                <#if article.preId == 0 && article.nextId != 0>
                                                    <li class="next">
                                                        <a href="${action}/${article.nextId}">
                                                            <span style="color: #ec407a" class="pull-right">下一页 <i class="fa fa-long-arrow-right"></i></span>
                                                        </a>
                                                    </li>
                                                </#if>

                                            </ul>

                                        </div>
                                    </#if>

                                    <#if type == "1">
                                        ${article.content}
                                    </#if>

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
                            <div class="col-xs-12" style="text-align: center">
                                © litaono1.cn 2016 | 皖ICP备16001149号-1
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- End Footer -->

            </div>
            <!-- end container -->


        </div>

        <!-- jQuery  -->
        <script src="/blog/blog/js/jquery.min.js"></script>
        <script src="/blog/blog/js/bootstrap.min.js"></script>
        <script src="/blog/blog/js/detect.js"></script>
        <script src="/blog/blog/js/fastclick.js"></script>
        <script src="/blog/blog/js/jquery.blockUI.js"></script>
        <script src="/blog/blog/js/waves.js"></script>
        <script src="/blog/blog/js/wow.min.js"></script>
        <script src="/blog/blog/js/jquery.nicescroll.js"></script>
        <script src="/blog/blog/js/jquery.scrollTo.min.js"></script>
        <!-- App js -->
        <script src="/blog/blog/js/jquery.app.js"></script>
        <!-- counters  -->
        <script src="/blog/blog/plugins/waypoints/lib/jquery.waypoints.js"></script>
        <script src="/blog/blog/plugins/counterup/jquery.counterup.min.js"></script>
        <!-- sweet alert  -->
        <script src="/blog/blog/plugins/sweetalert/dist/sweetalert.min.js"></script>
    </body>
</html>