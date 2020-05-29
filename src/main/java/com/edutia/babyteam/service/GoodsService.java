package com.edutia.babyteam.service;

import com.edutia.babyteam.dao.GoodsCoverDao;
import com.edutia.babyteam.dao.GoodsDao;
import com.edutia.babyteam.dao.GoodsDetailDao;
import com.edutia.babyteam.dao.GoodsParamDao;
import com.edutia.babyteam.entity.Goods;
import com.edutia.babyteam.entity.GoodsCover;
import com.edutia.babyteam.entity.GoodsDetail;
import com.edutia.babyteam.entity.GoodsParam;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class GoodsService {
    @Resource
    private GoodsDao goodsDao;

    @Resource
    private GoodsCoverDao goodsCoverDao;

    @Resource
    private GoodsParamDao goodsParamDao;

    @Resource
    private GoodsDetailDao goodsDetailDao;

    //第一次访问时将方法的返回结果放入缓存，
    // 第二次访问时不再执行内部的代码，而是从缓存中直接提取数据
    @Cacheable(value = "goods", key = "#goodsId") //key: goods::1  goods::2
    public Goods getGoods(Long goodsId){
        return goodsDao.findById(goodsId);
    }

    @Cacheable(value = "covers", key = "#goodsId")
    public List<GoodsCover> findCovers(Long goodsId){
        return goodsCoverDao.findByGoodsId(goodsId);
    }

    @Cacheable(value = "details", key = "#goodsId")
    public List<GoodsDetail> findDetails(Long goodsId){
        return goodsDetailDao.findByGoodsId(goodsId);
    }

    @Cacheable(value = "params", key = "#goodsId")
    public List<GoodsParam> findParams(Long goodsId){
        return goodsParamDao.findByGoodsId(goodsId);
    }

}
