<%--
  Created by IntelliJ IDEA.
  User: 13101
  Date: 2022/11/14
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
    <style>
        #registerform {
            margin: 150px auto;
            /*border: 5px rebeccapurple solid;*/
            line-height: 0px;
            text-align: center;
            width: 600px;
            height: 400px;
        }

        .input {
            width: 300px;
            height: 40px;
            border: 0px;
            margin:10px auto;
            border-bottom: 1px black solid;
            font-size: 18px;
        }

        .input:focus {
            outline: 0px;
        }

        .btn {
            width: 90px;
            height: 40px;
            font-size: 19px;
        }
        .btn.blue{
            border:1px solid #1e7db9;
            box-shadow: 0 1px 2px #8fcaee inset,0 -1px 0 #497897 inset,0 -2px 3px #8fcaee inset;
            background: -webkit-linear-gradient(top,#42a4e0,#2e88c0);
            background: -moz-linear-gradient(top,#42a4e0,#2e88c0);
            background: linear-gradient(top,#42a4e0,#2e88c0);
        }
        body{
            background-image: url("images/Background.jpg");
        }
    </style>
</head>
<body>
<form action="RegisterServlet" method="post" name="registerform" id="registerform">
    <h1>注册</h1>
    <input type="text" name="username" id="username" class="input" value="" placeholder="账号" /><br>
    <input type="password" name="password1" id="password1" value="" class="input" placeholder="密码" /><br>
    <input type="password" name="password2" id="password2" class="input" value="" placeholder="密码确认" /><br>
    <input type="text" name="telephone" id="telephone" class="input" value="" placeholder="手机号" /><br>
    <button type="button" class="btn blue" id="zhuce" accesskey="enter">注册</button>
    <button type="button" class="btn blue" id="fanhui">返回</button>
</form>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
    $("#zhuce").click(function () {
        if ($("#username").val() == "" || $("#username").val() == null) {
            alert("用户名不能为空");
            $("#username").focus();
        } else if ($("#password1").val() == "" || $("#password1").val() == null) {
            alert("密码不能为空");
            $("#password1").focus();
        } else {
            document.registerform.submit();
        }
    })
    $("#fanhui").click(function (){
        $(window).attr('location','login.jsp');
    })
</script>
</html>
