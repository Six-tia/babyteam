package com.edutia.babyteam.service;

import com.edutia.babyteam.dao.GoodsCoverDao;
import com.edutia.babyteam.dao.GoodsDao;
import com.edutia.babyteam.entity.Goods;
import com.edutia.babyteam.entity.GoodsCover;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class GoodsService {
    @Resource
    private GoodsDao goodsDao;

    @Resource
    private GoodsCoverDao goodsCoverDao;

    public Goods getGoods(Long goodsId){
        return goodsDao.findById(goodsId);
    }

    public List<GoodsCover> findCovers(Long goodsId){
        return goodsCoverDao.findByGoodsId(goodsId);
    }
}
