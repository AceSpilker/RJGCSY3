<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: 13101
  Date: 2022/11/19
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
  <form name="sjwj" id="sjwj" action="AddQuestionServlet">
    <table border="1" align="center" width="700px" style="margin: 10px auto">
      <tr>
        <td width="10%">题号</td>
        <td width="77%">问题内容</td>
        <td width="13%">问题类型</td>
      </tr>
      <tr>
        <td>
          <input type="text" name="tno" id="tno" maxlength="2" size="4"/>
        </td>
        <td>
          <input type="text" name="question" id="question" maxlength="50" size="70"/>
        </td>
        <td>
          <select id="lx" name="lx">
            <option value="单选">单选</option>
            <option value="多选">多选</option>
            <option value="判断">判断</option>
            <option value="填空">填空</option>
          </select>
        </td>
      </tr>
      <tr>
        <td colspan="3" align="center">
          <input type="button" name="tj" id="tj" value="提交">
          <input type="reset" name="reset" id="reset" value="重置">
        </td>
      </tr>
    </table>
  </form>
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
        <button name="delete" id="delete" value="删除" onclick="del('<%= ti.get("tihao")%>')" >删除</button>
      </td>
    </tr>
    <%
        }}
    %>
  </table>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
  $("#tj").click(function () {
      //document.sjwj.submit();
    $.ajax({
      url: "AddQuestionServlet",
      type: "post",
      dataType: "text",
      data:$('#sjwj').serialize(),
      async: false,
      traditional: true,
      error: function(request) {
        alert("Connection error");
      },
      success: function(data) {
        //接收后台返回的结果
        if(data="成功"){
          $("#tno").val("");
          $("#question").val("");
          location.reload();
        }else {
          alert("删除操作失败！");
        }

      } });
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
    }
  }
</script>
</html>
