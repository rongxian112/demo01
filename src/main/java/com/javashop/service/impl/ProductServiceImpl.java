package com.javashop.service.impl;

import com.javashop.mapper.ProductMapper;
import com.javashop.pojo.Product;
import com.javashop.service.ProductService;
import com.javashop.utils.SqlSessionUtils;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * @Description
 * @Author 荣贤
 * @Date 2022-11-29 10:36
 */
public class ProductServiceImpl implements ProductService {
    @Override
    public List<Product> AllProduct() {
        ProductMapper mapper = getMapper();
        List<Product> products = mapper.selectByExample(null);
        return products;
    }

    @Override
    public Product selOnePro(int proid) {
        ProductMapper mapper = getMapper();
        return mapper.selectByPrimaryKey(proid);
    }

    @Override
    public void updataePro(Product product) {
        ProductMapper mapper = getMapper();
        mapper.updateByPrimaryKey(product);
    }

    @Override
    public void addPro(Product product) {
        ProductMapper mapper = getMapper();
        mapper.insert(product);
    }

    @Override
    public void delOnePro(int proid) {
        ProductMapper mapper = getMapper();
        mapper.deleteByPrimaryKey(proid);
    }

    private ProductMapper getMapper() {
        SqlSession sqlSession = SqlSessionUtils.getSqlSession();
        ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
        return mapper;
    }
}
