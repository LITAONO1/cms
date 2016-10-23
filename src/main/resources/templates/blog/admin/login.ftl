
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="shortcut icon" href="blog/images/favicon.ico">
    <title>管理后台</title>
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


<div class="wrapper-page">
    <div class="panel panel-color panel-primary panel-pages">
        <div class="panel-heading bg-img">
            <div class="bg-overlay"></div>
            <h3 class="text-center m-t-10 text-white"> 欢迎使用管理后台 </h3>
        </div>


        <div class="panel-body">
            <form id="loginForm" class="form-horizontal m-t-20" method="post" action="">

                <div class="form-group">
                    <div class="col-xs-12">
                        <input id="userName" name="userName" class="form-control input-lg" type="text" value="123" required="true" placeholder="登录名称">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-12">
                        <input id="password" name="password" class="form-control input-lg" type="password" value="123" required="true" placeholder="登录密码">
                    </div>
                </div>

                <#--<div class="form-group">-->
                    <#--<div class="col-xs-12">-->
                        <#--<div class="checkbox checkbox-primary">-->
                            <#--<input id="checkbox-signup" type="checkbox">-->
                            <#--<label for="checkbox-signup">-->
                                <#--Remember me-->
                            <#--</label>-->
                        <#--</div>-->

                    <#--</div>-->
                <#--</div>-->

                <div class="form-group text-center m-t-40">
                    <div class="col-xs-12">
                        <button id="login" class="btn btn-primary btn-lg w-lg waves-effect waves-light" type="button">登录</button>
                    </div>
                </div>

                <#--<div class="form-group m-t-30">-->
                    <#--<div class="col-sm-12 text-right">-->
                        <#--<a href="recoverpw.html"><i class="fa fa-lock m-r-5"></i> 忘记密码</a>-->
                    <#--</div>-->
                    <#--&lt;#&ndash;<div class="col-sm-5 text-right">&ndash;&gt;-->
                        <#--&lt;#&ndash;<a href="register.html">注册</a>&ndash;&gt;-->
                    <#--&lt;#&ndash;</div>&ndash;&gt;-->
                <#--</div>-->
            </form>
        </div>

    </div>
</div>

<!-- Main  -->
<script src="blog/js/jquery.min.js"></script>
<script src="blog/js/bootstrap.min.js"></script>
<script src="blog/js/detect.js"></script>
<script src="blog/js/fastclick.js"></script>
<script src="blog/js/jquery.slimscroll.js"></script>
<script src="blog/js/jquery.blockUI.js"></script>
<script src="blog/js/waves.js"></script>
<script src="blog/js/wow.min.js"></script>
<script src="blog/js/jquery.nicescroll.js"></script>
<script src="blog/js/jquery.scrollTo.min.js"></script>

<script src="blog/js/jquery.app.js"></script>
<!--form validation-->
<script src="blog/plugins/jquery-validation/dist/jquery.validate.min.js"></script>

<script>
    $().ready(function() {

        $("#login").on("click", function(){
            if(validate.form()){
                $.ajax({
                    type:"post",
                    url:"user/login",
                    data: {userName:$("#userName").val(), password:$("#password").val()},
                    success:function(data){
                        var obj = eval(data);
                        if (obj.success){
                            window.location.href="admin/index";
                        }else{
                            alert(obj.message);
                        }
                    }
                });
            }
        });

        var validate = $("#loginForm").validate({
            rules:{
                userName: "required",
                password: "required"
            },
            messages:{
                userName: "登录名称不能为空",
                password: "登录密码不能为空"
            }
        });

    });
</script>

</body>
</html>