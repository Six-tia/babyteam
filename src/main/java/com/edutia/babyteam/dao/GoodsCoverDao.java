package com.edutia.babyteam.dao;

import com.edutia.babyteam.entity.GoodsCover;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface GoodsCoverDao {
    List<GoodsCover> findByGoodsId(@Param("id") Long goodsid);
}
