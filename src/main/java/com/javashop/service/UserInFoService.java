package com.javashop.service;

import com.javashop.pojo.Userinfo;

/**
 * @Description
 * @Author 荣贤
 * @Date 2022-11-28 22:01
 */
public interface UserInFoService {

    public int login(String username, String pwd);

    void addUser(Userinfo userinfo);
}
