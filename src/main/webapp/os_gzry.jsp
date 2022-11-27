<%--
  Created by IntelliJ IDEA.
  User: 13101
  Date: 2022/11/17
  Time: 18:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>顾客</title>
    <style>
        *{
            margin:0px;
        }
        #body_left{
            width: 15%;
            height: 750px;
            display: inline-block;
            float: left;
            background-color: lightgray;
        }
        ul li{
            font-size: 20px;
            height: 40px;

            /*background-color: lightgray;*/
            margin-top: 10px;
        }

        a{
            text-decoration: none;
            margin-top: 25px;
            /*vertical-align: bottom;*/
        }
        body{
            background-image: url("images/bg.png");
        }
    </style>
</head>
<body>
<div id="top">
    <img src="images/toubu_gongzuorenyuan.jpg" />
</div>
<div id="body">
    <div id="body_left">
        <ul type="none">
            <li><P id="sjwj">设计问卷</P></li>
            <li><p id="sjwcwj">设计完成的问卷</p></li>
            <li><p id="ksyewm">可使用二维码</p></li>
        </ul>
        <h4 align="center"><a href="login.jsp">退出登录</a></h4>
    </div>
    <iframe src="sjwj.jsp" id="body_right" name="glbodyright" width="79%" height="750" frameborder="no" align="left"></iframe>
</div>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
    $("#sjwj").click(function () {
        $("#body_right").attr('src',"SJWTServlet");
    })
    $("#sjwcwj").click(function () {
        $("#body_right").attr('src',"SJfinishServlet");
    })
    $("#ksyewm").click(function () {
        $("#body_right").attr('src',"ksyewm.jsp");
    })
</script>
</html>
