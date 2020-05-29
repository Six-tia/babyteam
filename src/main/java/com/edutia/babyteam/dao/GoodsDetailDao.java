package com.edutia.babyteam.dao;

import com.edutia.babyteam.entity.GoodsDetail;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsDetailDao {

    List<GoodsDetail> findByGoodsId(@Param("id") Long id);

}
