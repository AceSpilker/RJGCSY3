<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 13101
  Date: 2022/11/19
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<style>
#tjwj{
    margin: 5px auto;
    width:120px;
    height: 35px;
}

</style>
</head>
<body>
<h1 align="center">已设计完成问卷</h1>
<table border="1" align="center" width="700px" style="margin: 50px auto">
    <tr bgcolor="#a9c6c9">
        <td width="10%">题号</td>
        <td width="70%">问题内容</td>
        <td width="10%">问题类型</td>
        <td width="10%">删除问题</td>
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
        <td>
            <input type="button" name="delete" id="delete" value="删除" onclick="del('<%= ti.get("tihao")%>')" />
        </td>
    </tr>
    <%
            }}
    %>
</table>
    <input type="button" name="tjwj" id="tjwj" value="提交问卷"/>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
    $("#tjwj").click(function () {
        alert("提交问卷成功！");
    })
    function del(tihao) {
        var tt = confirm("确定删除吗?");
        if (tt) {
            $.ajax({
                url: "DeleteQuestionServlet",
                type: "post",
                dataType: "text",
                data:{"tihao":tihao},
                async: false,
                traditional: true,
                error: function(request) {
                    alert("Connection error");
                },
                success: function(data) {
                    //接收后台返回的结果
                    if(data="成功"){
                        location.reload();
                    }else {
                        alert("删除操作失败！");
                    }

                } });
        } else {
        }
    }
</script>
</html>
