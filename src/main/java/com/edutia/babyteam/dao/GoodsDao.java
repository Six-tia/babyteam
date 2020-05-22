package com.edutia.babyteam.dao;

import com.edutia.babyteam.entity.Goods;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface GoodsDao {
    Goods findById(@Param("id") Long id);
}
