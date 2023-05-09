<%--
  Created by IntelliJ IDEA.
  User: 荣贤
  Date: 2022/11/29
  Time: 12:55
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="common/base.jsp"></jsp:include>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="common/header.jsp"></jsp:include>
    <script type="text/javascript">
        $(function () {
            $("#sub_btn").click(function () {
                var usernameText = $("#username").val();
                var usernamePatt = /^\w{5,12}$/;
                if (!usernamePatt.test(usernameText)) {
                    $("span.errorMsg").text("用户名不合法！");
                    return false;
                }
                var passwordText = $("#password").val();
                var passwordPatt = /^\w{5,12}$/;
                if (!passwordPatt.test(passwordText)) {
                    $("span.errorMsg").text("密码太长！");
                    return false;
                }
                var repwdText = $("#repwd").val();
                if (repwdText != passwordText) {
                    $("span.errorMsg").text("密码不一致！");
                    return false;
                }
                $("span.errorMsg").text("");
            });

        });
    </script>
</head>
<body>
<div class="reg-w3">
    <div class="w3layouts-main">
        <h2>admin</h2>
        <span class="errorMsg">
            ${ requestScope.msg }
        </span>
        <form action="userInFoServlet?action=addUser" method="post">
            <input type="text" class="ggg" name="username" placeholder="用户名" required="" id="username">
            <input type="password" class="ggg" name="" placeholder="密码" required="" id="password">
            <input type="password" class="ggg" name="pwd" placeholder="确认密码" required="" id="repwd">
            <input type="submit" value="注册" name="register" id="sub_btn">
        </form>
    </div>
</div>
<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>
