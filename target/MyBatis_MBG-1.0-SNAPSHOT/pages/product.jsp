<%--
  Created by IntelliJ IDEA.
  User: 荣贤
  Date: 2022/11/29 0028
  Time: 23:56
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="common/base.jsp"></jsp:include>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        .fun {
            width: 40px;
            height: 20px;
            border: 1px solid #dfa7a6;
            background-color: #dfa7a6;
        }

        .fun a {
            margin-left: 3px;
            color: white;
        }
    </style>
</head>
<jsp:include page="common/header.jsp"></jsp:include>
<script type="text/javascript">
    $(function () {
        $("a.deleteClass").click(function () {
            return confirm("你确定要删除?");
        });
    });
</script>
<body>
<section id="container">
    <jsp:include page="common/table.jsp"></jsp:include>
    <section id="main-content">
        <section class="wrapper">
            <div class="table-agile-info">
                <div class="panel panel-default">
                    <div class="row w3-res-tb">
                        <div class="col-sm-5 m-b-xs">
                        </div>
                        <div class="col-sm-4">
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped b-t b-light">
                            <thead>
                            <tr>
                                <th style="width:20px;">
                                </th>
                                <th>产品编号</th>
                                <th>产品名称</th>
                                <th>产品价格</th>
                                <th>产品产地</th>
                                <th>产品样图</th>
                                <th style="width:30px;"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${requestScope.product}" var="product" varStatus="status">
                                <tr>
                                    <td></td>
                                    <td>${product.proid}</td>
                                    <td>${product.proname}</td>
                                    <td>${product.proprice}</td>
                                    <td>${product.proaddress}</td>
                                    <td><img style="width: 100px; height: 100px" src="static/img/${product.proimage}">
                                    </td>
                                    <td>
                                        <div class="fun">
                                            <a href="productServlet?action=selOnePro&proid=${product.proid}&method=updatePro">修改</a>
                                        </div>
                                        <br>
                                        <br>
                                        <div class="fun">
                                            <a class="deleteClass"
                                               href="productServlet?action=delOnePro&proid=${product.proid}">删除</a>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </section>
</section>
<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>
