<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${goods.title}</title>
    <link href="../static/layui/css/layui.css" rel="stylesheet">
    <script src="../static/layui/layui.all.js"></script>
    <style>
        .bb-info li {
            margin-top: 20px;
        }

        .bb-description img {
            width: 100%;
        }

        .bb-param td:first-child {
            background-color: #eeeeee;
        }
        .layui-this a{
            font-size: 18px;
        }
    </style>
</head>
<body style="background-color: #eeeeee">
<ul class="layui-nav layui-bg-green">
    <div class="layui-container">
        <li class="layui-nav-item" style="background-color: orange;margin-left: -14px"><a href="javascript:void(0)" style="font-size: 18px;color: white">宝宝团商城</a></li>
        <li class="layui-nav-item layui-this"><a href="">宝宝团</a></li>
        <li class="layui-nav-item"><a href="">全球购</a></li>
        <li class="layui-nav-item"><a href="">旗舰店</a></li>
        <li class="layui-nav-item"><a href="">宝宝社区</a></li>
    </div>
</ul>

<div class="layui-container" style="padding: 10px;border: 1px solid #ccc;background-color:white">
    <span class="layui-breadcrumb" style="visibility: visible;">
      <a href="/">首页</a><span lay-separator="">/</span>
      <a><cite>${goods.title}</cite></a>
    </span>
    <div class="layui-row" style="padding-top: 10px">
        <div class="layui-col-xs4">
            <div class="layui-carousel" id="test1">
                <div carousel-item>
                    <#list covers as c>
                    <div>
                        <img src="${c.gcPicUrl}"
                             style="width:100%">
                    </div>
                    </#list>
                </div>
            </div>
        </div>
        <div class="layui-col-xs8" style="padding: 10px">
            <ul class="bb-info">
                <li>
                    <h2>${goods.title}</h2>
                </li>

                <li class="layui-bg-green" style="padding:10px;line-height: 30px">
                    ${goods.subTitle}
                </li>

                <li style="color: darkgrey">
                    <span>宝宝团价：</span><span style="font-size: 26px;color: orange;font-weight: bold">${goods.currentPrice?string('￥0.00')}</span><span
                        style="text-decoration: line-through">${goods.originalCost?string('￥0.00')}</span>
                </li>

                <li>
                    <span>运费： 6.0元 <#if goods.isFreeDelivery == 1>满58.0元包邮</#if></span>
                </li>
                <li>
                    数量：
                    <div class="layui-btn-group">
                        <button class="layui-btn layui-btn-primary layui-btn-sm">
                            <span style="font-size: 18px">-</span></button>
                        <button class="layui-btn layui-btn-primary layui-btn-sm" style="width: 50px">1</button>
                        <button class="layui-btn layui-btn-primary layui-btn-sm"><span style="font-size: 18px">+</span>
                        </button>
                    </div>
                </li>
                <li>
                    <button class="layui-btn layui-btn-radius layui-btn-normal">立即购买</button>
                    <button class="layui-btn layui-btn-radius layui-btn-danger">加入购物车</button>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-row">
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
            <ul class="layui-tab-title">
                <li class="layui-this">产品详情</li>
                <li>产品参数</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show bb-description layui-col-xs8 layui-col-xs-offset2">
                    <img src="http://img02.meituncdn.com/group1/M00/8E/F1/f10f05fe0ce149d8b01d704b8e48d9cb.jpg">
                    <img src="http://img01.meituncdn.com/group1/M00/47/31/fc17706447314d32acb89c8fd9af328f.jpg">
                    <img src="http://img03.meituncdn.com/group1/M00/D7/1C/715dadd2b46145f98591ced7a6dd2db2.jpg">
                    <img src="http://img02.meituncdn.com/group1/M00/6A/8C/b6af58e38f8c47778ece2dcc808550f7.jpg">
                    <img src="http://img04.meituncdn.com/group1/M00/7C/A7/6ace72c2cab24294a7797ce5af6093bc.jpg">
                    <img src="http://img02.meituncdn.com/group1/M00/A7/CA/60a34e86b547408da78cc5ca0bc41d07.jpg">
                    <img src="http://img02.meituncdn.com/group1/M00/B8/75/cb8f05e27cd84e31b8f7f269175941ac.jpg">
                    <img src="http://img05.meituncdn.com/group1/M00/6D/23/f6d26edbea7d4fa4aa5889fe23a546b4.jpg">
                    <img src="http://img05.meituncdn.com/group1/M00/A4/D6/8738b21a741e4d369b6454a4ea01d622.jpg">
                    <img src="http://img01.meituncdn.com/group1/M00/06/21/5f53ed18ba4948e9ba52140560060770.jpg">
                    <img src="http://img04.meituncdn.com/group1/M00/C2/A3/c201ad7da34c4738a479febedc643fbb.jpg">
                    <img src="http://img03.meituncdn.com/group1/M00/49/14/dd750f514bf041d48262a3a191d49baf.jpg">
                    <img src="http://img01.meituncdn.com/group1/M00/0D/0D/07813fecb8b74bc8a869360dafc65877.jpg">
                </div>
                <div class="layui-tab-item layui-col-xs8 layui-col-xs-offset2">
                    <table class="layui-table bb-param" lay-size="lg">
                        <colgroup>
                            <col width="30%">
                            <col width="70%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td>品牌</td>
                            <td>哇爱</td>
                        </tr>
                        <tr>
                            <td>重量</td>
                            <td>1050g</td>
                        </tr>
                        <tr>
                            <td>产地</td>
                            <td>广州</td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    //由于模块都一次性加载，因此不用执行 layui.use() 来加载对应模块，直接使用即可：
    ;!function () {
        var layer = layui.layer
            , form = layui.form;

    }();
</script>
<script>
    layui.use('carousel', function () {
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            , width: '380px' //设置容器宽度
            , height: '380px'
            , arrow: 'hover' //始终显示箭头
            , anim: 'fade' //切换动画方式
        });
    });
</script>

</body>
</html>
