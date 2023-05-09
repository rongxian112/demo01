package com.javashop.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter("/*")
public class FilterLogin implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;

        Object username = req.getSession().getAttribute("username");

        String path = req.getServletPath();
        String[] urls = {"/userInFoServlet", "/json", ".js", ".css", ".ico", ".jpg", ".png", ".jpeg"};
        boolean flag = true;
        for (String url : urls) {
            if (path.contains(url) && !path.contains(".jsp")) {
                flag = false;
                break;
            } else if (path.contains("login.jsp")) {
                flag = false;
                break;
            }
        }
        if (flag) {
            if (username != null) {
                filterChain.doFilter(req, resp);
            } else {
                resp.sendRedirect(req.getContextPath() + "/pages/login.jsp");
            }
        } else {
            filterChain.doFilter(req, resp);
        }
    }

    @Override
    public void destroy() {

    }
}
