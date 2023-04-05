package com.myway.dao;

import com.myway.entity.QueryVo;
import com.myway.entity.Scenic;

import java.util.List;

public interface ScenicMapper {
    List<Scenic> selectScenicList();
    //总条数
    Integer postCountByQueryVo(QueryVo vo);
    //结果集
    List<Scenic> selectPostListByQueryVo(QueryVo vo);
    //新增
    void addScenic(Scenic scenic);

    public void deleteById(Integer id);

    int updateScenic(Scenic scenic);

    Scenic getScenicById(Integer id);

    int updateScenicSales(Integer id);
}
