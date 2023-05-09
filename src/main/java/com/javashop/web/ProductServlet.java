package com.javashop.web;

import com.javashop.pojo.Product;
import com.javashop.service.ProductService;
import com.javashop.service.impl.ProductServiceImpl;
import com.javashop.utils.WebUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Description
 * @Author 荣贤
 * @Date 2022-11-29 10:40
 */
@WebServlet("/productServlet")
public class ProductServlet extends BaseServlet {

    private ProductService productService = new ProductServiceImpl();

    protected void allProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = productService.AllProduct();
        req.setAttribute("product", products);
        req.getRequestDispatcher("/pages/product.jsp").forward(req, resp);
    }


    protected void selOnePro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int proid = WebUtils.parseInt(req.getParameter("proid"), 0);
        System.out.println(proid);
        Product product = productService.selOnePro(proid);
        req.setAttribute("product", product);
        req.getRequestDispatcher("/pages/add.jsp").forward(req, resp);
    }

    protected void updatePro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String, String> map = file(req);
        Product product = WebUtils.copyParamToBean(map, new Product());
        productService.updataePro(product);
        allProduct(req, resp);
    }

    protected void addPro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String, String> map = file(req);
        Product product = WebUtils.copyParamToBean(map, new Product());
        productService.addPro(product);
        allProduct(req, resp);
    }

    protected void delOnePro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int proid = WebUtils.parseInt(req.getParameter("proid"), 0);
        productService.delOnePro(proid);
        allProduct(req, resp);
    }

    private Map<String, String> file(HttpServletRequest req) {
        Map<String, String> map = new HashMap<String, String>();
        DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
        ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);
        try {
            List<FileItem> fileItems = servletFileUpload.parseRequest(req);
            for (FileItem fileItem : fileItems) {
                if (fileItem.isFormField()) {
                    String name = fileItem.getFieldName();
                    String value = fileItem.getString("UTF-8");
                    map.put(name, value);
                } else {
                    String fileName = fileItem.getName();
                    if (!fileName.equals("") && fileName != null) {
                        map.put("proimage", fileName);
                        InputStream inputStream = fileItem.getInputStream();
                        String path = getServletContext().getRealPath("static/img");
                        File file = new File(path);
                        if (!file.exists()) {
                            file.mkdir();
                        }
                        FileOutputStream outputStream = new FileOutputStream(file + "/" + fileName);
                        byte[] buffer = new byte[1024];
                        int len = 0;
                        while ((len = inputStream.read(buffer)) > 0) {
                            outputStream.write(buffer, 0, len);
                        }
                        inputStream.close();
                        outputStream.close();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }

}
