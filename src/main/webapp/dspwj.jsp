<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: 13101
  Date: 2022/11/19
  Time: 19:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<style>
    #twj{
        /*margin: 20px auto;*/
        width:120px;
        height: 35px;
        margin-left: 400px;
    }
    #fwj{
        margin: 5px auto;
        width:120px;
        height: 35px;
    }
</style>
</head>
<body>
<h1 align="center">待审批问卷</h1>
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
</table>
<input type="button" name="tfwj" id="twj" value="通过"/>
<input type="button" name="tfwj" id="fwj" value="不通过"/>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
    $("#twj").click(function () {
        alert("通过");
    })
    $("#fwj").click(function () {
        alert("不通过");
    })
</script>
</html>
