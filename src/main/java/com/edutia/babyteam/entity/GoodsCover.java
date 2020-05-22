package com.edutia.babyteam.entity;

import lombok.Data;

@Data
public class GoodsCover {

    private Long gcId;
    private Long goodsId;
    private String gcPicUrl;
    private Long gcOrder;

}
