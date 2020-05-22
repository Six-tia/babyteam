package com.edutia.babyteam.controller;

import com.edutia.babyteam.entity.Goods;
import com.edutia.babyteam.service.GoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
public class GoodsController {

    @Resource
    private GoodsService goodsService;

    //ModelAndView 对象有两个作用：
    //(1). 设置转向地址,这也是ModelAndView和ModelMap的主要区别.
    //(2). 将控制器方法中处理的结果数据传递到结果页面，也就是把在结果页面上
    // 需要的数据放到ModelAndView对象中即可，其作用类似于request对象的
    // setAttribute方法的作用，用来在一个请求过程中传递处理的数据。
    @GetMapping("/goods")
    public ModelAndView showGoods(Long gid){
        ModelAndView mav = new ModelAndView("/goods");
        Goods goods = goodsService.getGoods(gid);
        mav.addObject("goods", goods);
        mav.addObject("covers", goodsService.findCovers(gid));
        return mav;
    }
}
