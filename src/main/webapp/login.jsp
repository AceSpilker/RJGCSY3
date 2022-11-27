<%--
  Created by IntelliJ IDEA.
  User: 13101
  Date: 2022/11/14
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>登录页面</title>
  <style>
    #loginform {
      margin: 250px auto;
      /*border: 1px rebeccapurple solid;*/
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
    #zhuce{
      float:bottom;
      color:blue;
      font-size:18px;
      text-align: center;
      line-height: 30px;
      margin-top: 15px;
    }
    body{
      background-image: url("images/Background.jpg");
    }
    #register{
      margin-left: 60px;
    }
    a{
      text-decoration: none;
    }
    p{
      font-family: "黑体";
      font-size: 45px;
      font-weight: bolder;
    }
    #log{
      margin-top: 10px;
    }
  </style>
</head>
<body>
  <form action="LoginServlet" method="post" name="loginform" id="loginform">
    <p>用户登陆</p>
    <input type="text" name="username" id="username" class="input" value="" placeholder="账号" /><br>
    <input type="password" name="password" id="password" value="" class="input" placeholder="密码" /><br>
    <button type="button" class="btn blue" id="log" accesskey="enter">登录</button>
    <button type="reset" class="btn blue" id="register">重置</button>
    <div id="zhuce">
      <a href="registe.jsp">注册用户</a>
    </div>
  </form>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
  $("#log").click(function () {
    if ($("#username").val() == "" || $("#username").val() == null) {
      alert("用户名不能为空");
      $("#username").focus();
    } else if ($("#password").val() == "" || $("#password").val() == null) {
      alert("密码不能为空");
      $("#password").focus();
    } else {
      document.loginform.submit();
    }
  })
</script>
</html>