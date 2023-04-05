package com.myway.service;

import com.myway.entity.QueryVo;
import com.myway.entity.Scenic;
import com.myway.utils.Page;

import java.util.List;

public interface ScenicService {
    List<Scenic> selectScenicList();
    Page<Scenic> selectPageByQueryVo(QueryVo vo);
    //新增
    void addScenic(Scenic scenic);
    public void deleteById(Integer id);
    int updateScenic(Scenic scenic);
    Scenic getScenicById(Integer id);
    int updateScenicSales(Integer id);
}
