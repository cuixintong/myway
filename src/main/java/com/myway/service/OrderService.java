package com.myway.service;

import com.myway.entity.Order;
import com.myway.entity.QueryVo;
import com.myway.utils.Page;

import java.util.List;

public interface OrderService {
    Page<Order> selectOrderPageByQueryVo(QueryVo vo);
    List<Order> selectOrderListByFid(String fid);
    void updateStateById(Integer id);
    void updateStateToPayById(Integer id);
    int insertOrder(Order order);
    Order getOrderByNo(String no);
}
