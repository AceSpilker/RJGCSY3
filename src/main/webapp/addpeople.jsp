<%--
  Created by IntelliJ IDEA.
  User: 13101
  Date: 2022/11/19
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>
  <style>
    #from_main{
      margin: auto auto;
      width: 60%;
      height: 350px;
      /*border: #1e7db9 2px solid;*/
    }
    td{
      font-size: 22px;
      line-height: 50px;
    }
  </style>
</head>
<body>
  <div id="from_main">
    <form method="post" name="addnew" action="AddPeopleServlet">
      <table width="100%">
        <tr>
          <td width="20%">
            用户名：
          </td>
          <td>
            <input type="text" name="newuser" id="newuser" value=""/>
          </td>
        </tr>
        <tr>
          <td>密码：</td>
          <td>
            <input type="password" name="newup" id="newup"/>
          </td>
        </tr>
        <tr>
          <td>电话号：</td>
          <td>
            <input type="tel" name="newtel" id="newtel"/>
          </td>
        </tr>
        <tr>
          <td>级别：</td>
          <td>
            <select name="jibie" id="jibie">
              <option value="0">管理员</option>
              <option value="2">工作人员</option>
              <option value="3">领导</option>
              <option value="4">顾客</option>
            </select>
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <input type="button" name="log" id="log" value="提交"/>
            <input type="reset" name="reset" id="reset" value="重置"/>
          </td>
        </tr>
      </table>
    </form>
  </div>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
  $("#log").click(function () {
      document.addnew.submit();
      alert($("#newuser").val());
  })
</script>
</html>
