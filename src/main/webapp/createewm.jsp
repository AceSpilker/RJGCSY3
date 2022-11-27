<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: 13101
  Date: 2022/11/19
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        #scewm{
            margin: 5px auto;
            width:120px;
            height: 35px;
        }
    </style>
</head>
<body>
<h1 align="center" style="font-size: 40px">待生成二维码问卷</h1>
<table border="1" align="center" width="700px" style="margin: 10px auto">
    <tr bgcolor="#a9c6c9">
        <td width="10%">题号</td>
        <td width="77%">题内容</td>
        <td width="13%">题类型</td>
    </tr>
        <%
        if(request.getAttribute("list")!=null){
        List<Map> list = (List)request.getAttribute("list");
        for(int i=0;i< list.size();i++){
            Map ti = (Map) list.get(i);
    %>
    <tr bgcolor="#d4e3e5">
        <td><%= ti.get("tihao")%></td>
        <td><%= ti.get("tineirong")%></td>
        <td><%= ti.get("titype")%></td>
    </tr>
        <%
        }}
    %>
    <input type="button" name="scewm" id="scewm" value="生成二维码"/>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
    $("#scewm").click(function () {
        $(location).attr('href','ewmsuccess.jsp');
    })
</script>
</html>
