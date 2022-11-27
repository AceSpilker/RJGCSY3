<%--
  Created by IntelliJ IDEA.
  User: 13101
  Date: 2022/11/17
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>领导</title>
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
    </style>
</head>
<body>
<%--<form name="xs" id="xs" action="DSPWJServlet" target=""></form>--%>
<div id="top">
    <img src="images/toubu_lingdao.jpg" />
</div>
<div id="body">
    <div id="body_left">
        <ul type="none">
            <li><P id="sjfx">数据分析</P></li>
            <li><p id="dspwj">待审批问卷</p></li>
        </ul>
        <h4 align="center"><a href="login.jsp">退出登录</a></h4>
    </div>
    <iframe src="https://www.wjx.cn/wxloj/datafullscreen.aspx?activity=194759898" id="body_right" name="glbodyright" width="85%" height="750" frameborder="no" align="left"></iframe>
</div>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
    $("#sjfx").click(function () {
        $("#body_right").attr('src',"https://www.wjx.cn/wxloj/datafullscreen.aspx?activity=194759898");
    })
    $("#dspwj").click(function () {
        //document.xs.submit();
        $("#body_right").attr('src',"DSPWJServlet");
        //$("#xs").attr('target',"dspwj.jsp");
        //nn();
    })
    // function nn () {
    //     $.ajax({
    //         url: 'DSPWJServlet',
    //         type: 'post',
    //         date:{},
    //         dataType:'text',
    //         success: function (list) {
    //             console.log(list);
    //         }
    //     });
    // }
</script>
</html>