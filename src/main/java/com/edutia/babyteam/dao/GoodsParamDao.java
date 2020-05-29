package com.edutia.babyteam.dao;

import com.edutia.babyteam.entity.GoodsParam;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsParamDao {

    List<GoodsParam> findByGoodsId(@Param("id") Long id);

}
