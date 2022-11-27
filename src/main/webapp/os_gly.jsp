<%--
  Created by IntelliJ IDEA.
  User: 13101
  Date: 2022/11/15
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员</title>

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
            /*border: #1e7db9 1px solid;*/
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
        h4{
            margin-top:25px;

        }
        body{
            background-image: url("images/bg.png");
        }
    </style>
</head>
<body>
<div id="top">
    <img src="images/toubu_guanliyuan.jpg" />
</div>
<div id="body">
    <div id="body_left">
        <ul type="none">
            <li><P id="ewm">二维码生成</P></li>
            <li><p id="addry">添加人员信息</p></li>
            <li><p id="yhgl">用户管理</p></li>
        </ul>
        <h4 align="center"><a href="login.jsp">退出登录</a></h4>
    </div>
    <iframe src="createewm.jsp" id="body_right" name="glbodyright" width="85%" height="750" frameborder="no" scrolling="no" align="left"></iframe>
</div>

</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#body_right").attr('src',"CreateEWMServlet");
    })
    $("#ewm").click(function () {
        $("#body_right").attr('src',"CreateEWMServlet");
    })
    $("#addry").click(function () {
        $("#body_right").attr('src',"addpeople.jsp");
    })
    $("#yhgl").click(function () {
        $("#body_right").attr('src',"YhglServlet");
    })
</script>
</html>
