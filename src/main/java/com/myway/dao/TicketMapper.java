package com.myway.dao;

import com.myway.entity.QueryVo;
import com.myway.entity.Ticket;

import java.util.List;

public interface TicketMapper {
    List<Ticket> selectTicketList(Integer id);
    //总条数
    Integer postCountByQueryVo(QueryVo vo);
    //结果集
    List<Ticket> selectPostListByQueryVo(QueryVo vo);
    void deleteById(Integer id);
    void addTicket(Ticket ticket);
    int updateTicket(Ticket ticket);
    Ticket getTicketById(Integer id);
    double selectPriceByFid(Integer id);
}
