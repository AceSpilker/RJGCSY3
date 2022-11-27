<%--
  Created by IntelliJ IDEA.
  User: 13101
  Date: 2022/11/17
  Time: 14:05
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
      width: 20%;
      height: 750px;
      display: inline-block;
      float: left;
      background-color: lightgray;
      /*border: #1e7db9 1px solid;*/
    }
    a{
      text-decoration: none;
    }
  </style>
</head>
<body>
<div id="top">
  <img src="images/toubu_yonghu.jpg" />
</div>
<div id="body">
  <div id="body_left">
    <h2 align="center">扫码回答问题</h2>
    <img  src="images/qrcode(1).jpg" style="width: 250px; height: 250px; margin-left: 60px;"/>
    <h4 align="center"><a href="login.jsp">退出登录</a></h4>
  </div>
  <iframe src="https://www.wjx.cn/vm/exooVEm.aspx" id="body_right" name="glbodyright" width="78%" height="750" frameborder="no" align="left"></iframe>
</div>
</body>
</html>
