package com.javashop.web;

import com.javashop.pojo.Userinfo;
import com.javashop.service.UserInFoService;
import com.javashop.service.impl.UserInFoServiceImpl;
import com.javashop.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Description
 * @Author 荣贤
 * @Date 2022-11-28 22:51
 */
@WebServlet("/userInFoServlet")
public class UserInFoServlet extends BaseServlet {

    private UserInFoService userInFoService = new UserInFoServiceImpl();
    private ProductServlet productServlet = new ProductServlet();

    protected void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String pwd = req.getParameter("pwd");
        int login = userInFoService.login(username, pwd);
        if (login != 0) {
            req.getSession().setAttribute("username", username);
            productServlet.allProduct(req, resp);
        } else {
            req.setAttribute("msg", "用户名或密码错误");
            req.getRequestDispatcher("/pages/login.jsp").forward(req, resp);
        }
    }

    protected void logout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().invalidate();
        resp.sendRedirect(req.getContextPath() + "/pages/login.jsp");
    }

    protected void addUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Userinfo userinfo = WebUtils.copyParamToBean(req.getParameterMap(), new Userinfo());
        userInFoService.addUser(userinfo);
        resp.sendRedirect(req.getContextPath() + "/pages/login.jsp");
    }

}
