package com.myway.dao;

import com.myway.entity.QueryVo;
import com.myway.entity.TastyFood;

import java.util.List;

public interface FoodMapper {
    List<TastyFood> selectFoodList();
    //总条数
    Integer postCountByQueryVo(QueryVo vo);
    //结果集
    List<TastyFood> selectPostListByQueryVo(QueryVo vo);
    //新增
    void addFood(TastyFood tastyFood);
    void deleteById(Integer id);
    int updateFood(TastyFood tastyFood);

    TastyFood getFoodById(Integer id);
}
