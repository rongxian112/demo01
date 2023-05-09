package com.javashop.service;

import com.javashop.pojo.Product;

import java.util.List;

public interface ProductService {

    public List<Product> AllProduct();

    Product selOnePro(int proid);

    void updataePro(Product product);

    void addPro(Product product);

    void delOnePro(int proid);
}
