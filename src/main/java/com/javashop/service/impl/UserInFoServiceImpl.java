package com.javashop.service.impl;

import com.javashop.mapper.UserinfoMapper;
import com.javashop.pojo.Userinfo;
import com.javashop.pojo.UserinfoExample;
import com.javashop.service.UserInFoService;
import com.javashop.utils.SqlSessionUtils;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * @Description
 * @Author 荣贤
 * @Date 2022-11-29 22:09
 */
public class UserInFoServiceImpl implements UserInFoService {

    @Override
    public int login(String username, String pwd) {
        SqlSession sqlSession = SqlSessionUtils.getSqlSession();
        UserinfoMapper mapper = sqlSession.getMapper(UserinfoMapper.class);
        UserinfoExample user = new UserinfoExample();
        user.createCriteria().andUsernameEqualTo(username).andPwdEqualTo(pwd);
        List<Userinfo> userinfos = mapper.selectByExample(user);
        return userinfos.size();
    }

    @Override
    public void addUser(Userinfo userinfo) {
        SqlSession sqlSession = SqlSessionUtils.getSqlSession();
        UserinfoMapper mapper = sqlSession.getMapper(UserinfoMapper.class);
        mapper.insert(userinfo);
    }
}
