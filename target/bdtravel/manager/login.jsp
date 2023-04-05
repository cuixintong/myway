<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<% request.setAttribute("ctp",request.getContextPath());%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>管理员登录</title>
    <link rel="shortcut icon" href="${ctp}/image/logo1.png" type="${ctp}/image/x-icon" />
    <link rel="stylesheet" href="${ctp}/css/bootstrap.min.css" type="text/css" />
    <script src="${ctp}/js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="${ctp}/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- 引入自定义css文件 style.css -->
    <link rel="stylesheet" href="${ctp}/css/style.style2.css" type="text/css" />

    <style>
        body {
            margin-top: 20px;
            margin: 0 auto;
        }

        .carousel-inner .item img {
            width: 100%;
            height: 300px;
        }

        .container .row div {
            /* position:relative;
                         float:left; */

        }

        font {
            color: #666;
            font-size: 22px;
            font-weight: normal;
            padding-right: 17px;
        }
    </style>
    <script type="text/javascript">
        function changeImg(obj){
            obj.src="${pageContext.request.contextPath }/getImage?time="+new Date().getTime();
        }
    </script>
</head>
<body>


<div class="container"
     style="width: 100%; height: 660px; background: url('${ctp}/image/background/101.jpg') no-repeat;">
    <div class="row">
        <div class="col-md-3">
        </div>

        <div class="col-md-6">
            <div
                    style="width: 440px; border: 1px solid #E7E7E7; padding: 20px 0 20px 30px; border-radius: 5px; margin-top: 120px; background: #fff;">
                <font>管理员登录</font>MANAGER LOGIN
                <div>&nbsp;</div>
                <form class="form-horizontal" method="post" action="${ctp}/managerLogin">
                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">账号</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="name" name="name"
                                   placeholder="请输入账号">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-6">
                            <input type="password" class="form-control" id="inputPassword3" name="password"
                                   placeholder="请输入密码">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="checkcode" class="col-sm-2 control-label">验证码</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="checkcode" name="verifyCode"
                                   placeholder="请输入验证码">
                        </div>
                        <div class="col-sm-3">
                            <img onclick="changeImg(this)" src="${pageContext.request.contextPath }/getImage" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input type="submit" width="100" value="登录" name="submit"
                                   style="background: url('${ctp}/image/login.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0); height: 35px; width: 100px; color: white;">
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div class="col-md-3">
        </div>
    </div>
</div>

</body>
</html>