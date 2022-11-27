<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 13101
  Date: 2022/11/26
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<table border="1" align="center" width="900px" style="margin: 50px auto">
    <tr bgcolor="#a9c6c9">
        <td width="20%">用户名</td>
        <td width="30%">密码</td>
        <td width="25%">电话号码</td>
        <td width="15%">用户级别</td>
        <td width="10%">删除用户</td>
    </tr>
    <%
        if(request.getAttribute("list")!=null){
            List<Map> list = (List)request.getAttribute("list");
            for(int i=0;i< list.size();i++){
                Map ti = (Map) list.get(i);
    %>
    <tr bgcolor="#d4e3e5">
        <td><%= ti.get("uname")%></td>
        <td><%= ti.get("upassword")%></td>
        <td><%= ti.get("utele")%></td>
        <td><%= ti.get("utype")%></td>
        <td>
            <input type="button" name="delete" id="delete" value="删除" onclick="del('<%= ti.get("uname")%>')" />
        </td>
    </tr>
    <%
            }}
    %>
</table>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
    function del(uname) {
        var tt = confirm("确定删除吗?");
        if (tt) {
            $.ajax({
                url: "DeleteUserServlet",
                type: "post",
                dataType: "text",
                data:{"name":uname},
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
