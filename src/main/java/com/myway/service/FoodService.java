package com.myway.service;

import com.myway.entity.QueryVo;
import com.myway.entity.TastyFood;
import com.myway.utils.Page;

import java.util.List;

public interface FoodService {
    List<TastyFood> selectFoodList();
    Page<TastyFood> selectFoodPageByQueryVo(QueryVo vo);
    //新增
    void addFood(TastyFood tastyFood);
    void deleteById(Integer id);
    int updateFood(TastyFood tastyFood);
    TastyFood getFoodById(Integer id);
}
