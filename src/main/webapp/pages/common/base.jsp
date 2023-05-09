<%--
  Created by IntelliJ IDEA.
  User: 荣贤
  Date: 2022/11/29
  Time: 12:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    String path = request.getScheme()
            + "://"
            + request.getServerName()
            + ":"
            + request.getServerPort()
            + request.getContextPath()
            + "/";
    pageContext.setAttribute("basePath", path);
%>
<head>
    <title>base</title>
    <base href="<%=path%>"/>
    <link rel="stylesheet" href="<%=path%>/layui/css/layui.css">
</head>
<script src="<%=path%>js/jquery-3.6.0.min.js"></script>
<script src="<%=path%>js/common.js"></script>
<script src="<%=path%>layui/layui.js"></script>
</html>
