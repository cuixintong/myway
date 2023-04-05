package com.myway.dao;

import com.myway.entity.QueryVo;
import com.myway.entity.User;

import java.util.List;

public interface UserMapper {
    public User getUser(User user);

    public int userRegister(User user);

    public int updateUserInfo(User user);

    public int active(String activeCode);

    public int checkUsername(String username);

    //总条数
    public Integer customerCountByQueryVo(QueryVo vo);
    //结果集
    public List<User> selectCustomerListByQueryVo(QueryVo vo);

    int updateStateById(String id);

    int updateState1ById(String id);
}
