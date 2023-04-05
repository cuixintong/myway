package com.myway.service.impl;

import com.myway.dao.OrderMapper;
import com.myway.entity.Order;
import com.myway.entity.QueryVo;
import com.myway.service.OrderService;
import com.myway.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    OrderMapper orderMapper;

    public List<Order> selectOrderListByFid(String tid) {
        return orderMapper.selectOrderList(tid);
    }

    /**
     *后台获得分页数据
     *
     * @param vo
     * @return
     */
    public Page<Order> selectOrderPageByQueryVo(QueryVo vo) {
        Page<Order> page = new Page<Order>();
        //每页数
        page.setSize(5);
        vo.setSize(5);
        if (null != vo) {
            // 判断当前页
            if (null != vo.getPage()) {
                page.setPage(vo.getPage());
                vo.setStartRow((vo.getPage() - 1) * vo.getSize());
            }
            if(null != vo.getName() && !"".equals(vo.getName().trim())){
                vo.setName(vo.getName().trim());
            }
            if(null !=vo.getUserid()&&!"".equals(vo.getUserid().trim())){
                vo.setUserid(vo.getUserid().trim());
            }
            //总条数
            page.setTotal(orderMapper.postCountByQueryVo(vo));
            page.setRows(orderMapper.selectPostListByQueryVo(vo));
        }
        return page;
    }

    public void updateStateById(Integer id){
        orderMapper.updateStateById(id);
    }

    public void updateStateToPayById(Integer id){
        orderMapper.updateStateToPayById(id);
    }

    public int insertOrder(Order order){
        return orderMapper.insertOrder(order);
    }

    public Order getOrderByNo(String no){
        return orderMapper.getOrderByNo(no);
    }
}