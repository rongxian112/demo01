<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 荣贤
  Date: 2022/11/29
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="common/base.jsp"></jsp:include>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="common/header.jsp"></jsp:include>
</head>
<c:if test="${param.method == 'addPro'}">
    <script type="text/javascript">
        $(function () {
            $("#sub_btn").click(function () {
                var proname = $(".proname").val();
                if (proname == undefined || proname == "") {
                    $("span.errorMsg").text("产品名称不能为空！");
                    return false;
                }
                var proprice = $(".proprice").val();
                if (proprice == undefined || proprice == "") {
                    $("span.errorMsg").text("产品价格不能为空！");
                    return false;
                }
                var proaddress = $(".proaddress").val();
                if (proaddress == undefined || proaddress == "") {
                    $("span.errorMsg").text("产品产地不能为空！");
                    return false;
                }
                var proimage = $(".proimage").val();
                if (proimage == undefined || proimage == "") {
                    $("span.errorMsg").text("产品样图不能为空！");
                    return false;
                }
                $("span.errorMsg").text("");
            });

        });
    </script>
</c:if>
<script type="text/javascript">
    $(function () {
        $("#sub_btn").click(function () {
            var proprice = $(".proprice").val();
            var numPatt = /^\d+$|^\d*\.\d+$/g;
            if (!numPatt.test(proprice)) {
                $("span.errorMsg").text("价格输入错误！");
                return false;
            }
            $("span.errorMsg").text("");
        });
    });
</script>
<body>
<jsp:include page="common/table.jsp"></jsp:include>
<section id="container">
    <section id="main-content">
        <section class="wrapper">
            <div class="form-w3layouts">
                <!-- page start-->
                <!-- page start-->
                <div class="row">
                    <div class="col-lg-12">
                        <section class="panel">
                            <div class="panel-body">
                                <div class="position-center">
                                    <form action="productServlet?action=${param.method}" enctype="multipart/form-data"
                                          method="post">
                                        <input type="hidden" class="form-control" name="proid"
                                               value="${requestScope.product.proid}">
                                        <input type="hidden" name="proimage" value="${requestScope.product.proimage}">
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">产品名称</label>
                                            <input type="text" class="form-control proname" id="exampleInputPassword1"
                                                   placeholder="Password" name="proname"
                                                   value="${requestScope.product.proname}">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">产品价格</label>
                                            <input type="text" class="form-control proprice" placeholder="Password"
                                                   name="proprice" value="${requestScope.product.proprice}">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">产品产地</label>
                                            <input type="text" class="form-control proaddress" placeholder="Password"
                                                   name="proaddress"
                                                   value="${requestScope.product.proaddress}">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputFile">产品样图</label>
                                            <input type="file" class="proimage" id="exampleInputFile" name="proimage">
                                            <div>
                                                <%
                                                    Object product = request.getAttribute("product");
                                                    if (product != null) {
                                                %>
                                                <img style="width: 100px; height: 100px"
                                                     src="static/img/${requestScope.product.proimage}">
                                                <%
                                                    }
                                                %>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-info" id="sub_btn">Submit</button>
                                        <span class="errorMsg">

                                        </span>
                                    </form>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </section>
    </section>
</section>
<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>
