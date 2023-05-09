<%--
  Created by IntelliJ IDEA.
  User: 荣贤
  Date: 2022/11/29
  Time: 12:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header fixed-top clearfix">
    <!--logo start-->
    <div class="brand">
        <a href="index.html" class="logo">超市系统管理</a>
        <div class="sidebar-toggle-box">
            <div class="fa fa-bars"></div>
        </div>
    </div>

    <div class="top-nav clearfix">
        <ul class="nav pull-right top-menu">
            <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                    <a href="userInFoServlet?action=logout">Log Out</a>
                </a>
            </li>
        </ul>
    </div>
</header>
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li class="sub-menu">
                    <a class="active" href="productServlet?action=allProduct">
                        <i class="fa fa-th"></i>
                        <span>商品列表</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="pages/add.jsp?method=addPro">
                        <i class="fa fa-tasks"></i>
                        <span>添加商品</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</aside>