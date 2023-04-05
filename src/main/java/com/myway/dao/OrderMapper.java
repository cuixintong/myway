package com.myway.dao;

import com.myway.entity.Order;
import com.myway.entity.QueryVo;

import java.util.List;

public interface OrderMapper {
    List<Order> selectOrderList(String id);
    //总条数
    Integer postCountByQueryVo(QueryVo vo);
    //结果集
    List<Order> selectPostListByQueryVo(QueryVo vo);

    int updateStateById(Integer id);

    void updateStateToPayById(Integer id);

    int insertOrder(Order order);

    Order getOrderByNo(String no);
}
