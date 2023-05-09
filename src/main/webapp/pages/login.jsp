<%--
  Created by IntelliJ IDEA.
  User: 荣贤
  Date: 2022/11/29
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="common/base.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    </script>
    <jsp:include page="common/header.jsp"></jsp:include>
</head>

<body>
<div class="log-w3">
    <div class="w3layouts-main">
        <h2>admin</h2>
        <form action="userInFoServlet" method="post">
            <input type="hidden" name="action" value="login">
            <input class="ggg" name="username" placeholder="用户名" required="">
            <input type="password" class="ggg" name="pwd" placeholder="密码" required="">
            <input type="submit" value="登录" name="login">
        </form>
        <p><a href="pages/regist.jsp">注册</a></p>
        <p>${requestScope.msg}</p>
    </div>
</div>
<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>
