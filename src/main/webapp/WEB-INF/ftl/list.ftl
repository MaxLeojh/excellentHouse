<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="mobile-agent" content="format=html5; url=http://m.lvmama.com/channel/around/">

    <title>列表页</title>
    <link rel="stylesheet" type="text/css" href="css/chanel.css">
    <link rel="stylesheet" href="css/css.css">
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>

    <meta name="description" content=""/>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/pindao1.js"></script>

    <!--[if IE 6]>
    <script src="js/iepng.js"></script>
    <script type="text/javascript">
        EvPNG.fix('.icon-quan, .icon-weixin, .icon-weibo, .p_city i');
    </script>
    <![endif]-->
</head>
<body class="pindao">
<div id="pnav" class="p_pnav pnav clearfix">
    <div class="p_wrap">
        <ul class="pnav-main">
            <li id="home">
                <a href="javascript:;" hidefocus="false">首页</a>
            </li>
            <li id="ticket">
                <a href="javascript:;" hidefocus="false">二手房</a>
            </li>
            <li id="abroad" class="">
                <a href="javascript:;" hidefocus="false">新房</a>
            </li>

        </ul>
        <ul class="pnav-small">
            <li id="lvcomment">
                <a href="" rel="nofollow" hidefocus="false">看房</a>
            </li>
            <li id="lvguide">
                <a href="" hidefocus="false">买房</a>
            </li>
            <li id="lvplace">
                <a target="_blank" href="" hidefocus="false">
                    <span>更多</span>
                </a>
            </li>
        </ul>
    </div>
</div>
<!-- //div.pnav -->
<!-- 公共头部结束  -->

<!-- 搜索框区域\\ -->
<div class="p_search-box p_wrap">
    <div class="p_switch-city">
        <div class="p_citylist">
            <div class="p_line"></div>
            <dl>
                <dt>华北</dt>
                <dd><a cityid="110000" provinceid="110000" href="#">北京</a> <a cityid="120000" provinceid="120000"
                                                                              href="#">天津</a> <a cityid="140100"
                                                                                                 provinceid="140000"
                                                                                                 href="#">太原</a> <a
                        cityid="130200" provinceid="130000" href="#">唐山</a> <a cityid="150100" provinceid="150000"
                                                                               href="#">呼和浩特</a> <a cityid="150200"
                                                                                                    provinceid="150000"
                                                                                                    href="#">包头</a> <a
                        cityid="130100" provinceid="130000" href="#">石家庄</a></dd>
            </dl>
            <dl>
                <dt>华东</dt>
                <dd><a cityid="310000" provinceid="310000" href="#">上海</a> <a cityid="320100" provinceid="320000"
                                                                              href="#">南京</a> <a cityid="330100"
                                                                                                 provinceid="330000"
                                                                                                 href="#">杭州</a> <a
                        cityid="340100" provinceid="340000" href="#">合肥</a> <a cityid="350200" provinceid="350000"
                                                                               href="#">厦门</a> <a cityid="370100"
                                                                                                  provinceid="370000"
                                                                                                  href="#">济南</a> <a
                        cityid="360100" provinceid="360000" href="#">南昌</a> <a cityid="320500" provinceid="320000"
                                                                               href="#">苏州</a> <a cityid="320200"
                                                                                                  provinceid="320000"
                                                                                                  href="#">无锡</a> <a
                        cityid="330200" provinceid="330000" href="#">宁波</a> <a cityid="320400" provinceid="320000"
                                                                               href="#">常州</a> <a cityid="330400"
                                                                                                  provinceid="330000"
                                                                                                  href="#">嘉兴</a> <a
                        cityid="320600" provinceid="320000" href="#">南通</a> <a cityid="321000" provinceid="320000"
                                                                               href="#">扬州</a> <a cityid="321100"
                                                                                                  provinceid="320000"
                                                                                                  href="#">镇江</a> <a
                        cityid="330600" provinceid="330000" href="#">绍兴</a> <a cityid="330300" provinceid="330000"
                                                                               href="#">温州</a> <a cityid="330700"
                                                                                                  provinceid="330000"
                                                                                                  href="#">金华</a> <a
                        cityid="331000" provinceid="330000" href="#">台州</a> <a cityid="320900" provinceid="320000"
                                                                               href="#">盐城</a></dd>
            </dl>
            <dl>
                <dl>
                    <dt>东北</dt>
                    <dd><a cityid="210100" provinceid="210000" href="#">沈阳</a> <a cityid="210200" provinceid="210000"
                                                                                  href="#">大连</a> <a cityid="230100"
                                                                                                     provinceid="230000"
                                                                                                     href="#">哈尔滨</a> <a
                            cityid="220100" provinceid="220000" href="#">长春</a></dd>
                </dl>
                <dt>中南</dt>
                <dd><a cityid="410100" provinceid="410000" href="#">郑州</a> <a cityid="420100" provinceid="420000"
                                                                              href="#">武汉</a> <a cityid="430100"
                                                                                                 provinceid="430000"
                                                                                                 href="#">长沙</a> <a
                        cityid="440100" provinceid="440000" href="#">广州</a> <a cityid="440300" provinceid="440000"
                                                                               href="#">深圳</a> <a cityid="450500"
                                                                                                  provinceid="450000"
                                                                                                  href="#">北海</a> <a
                        cityid="450100" provinceid="450000" href="#">南宁</a> <a cityid="450300" provinceid="450000"
                                                                               href="#">桂林</a> <a cityid="460100"
                                                                                                  provinceid="460000"
                                                                                                  href="#">海口</a> <a
                        cityid="F20001" provinceid="F20000" href="#">澳门</a> <a cityid="F10001" provinceid="F10000"
                                                                               href="#">香港</a></dd>
            </dl>
            <dl>
                <dt>西南</dt>
                <dd><a cityid="500108" provinceid="500000" href="#">重庆</a> <a cityid="510100" provinceid="510000"
                                                                              href="#">成都</a> <a cityid="520100"
                                                                                                 provinceid="520000"
                                                                                                 href="#">贵阳</a> <a
                        cityid="540100" provinceid="540000" href="#">拉萨</a></dd>
            </dl>
            <dl>
                <dt>西北</dt>
                <dd><a cityid="610100" provinceid="610000" href="#">西安</a> <a cityid="640100" provinceid="640000"
                                                                              href="#">银川</a> <a cityid="630100"
                                                                                                 provinceid="630000"
                                                                                                 href="#">西宁</a> <a
                        cityid="650100" provinceid="650000" href="#">乌鲁木齐</a></dd>
            </dl>
        </div>
        <div class="p_city"><i></i> <a class="p_switch-info">切换城市</a> <span>您现在 <b>深圳</b> </span></div>
    </div>
    <div class="p_from">
        <div class="p_city1"
             style="border-bottom-color: rgb(70, 140, 0);) 100px 12px no-repeat;">
            深圳
            <div class="p_city1list" style="display: none;">
                <dl>
                    <dt>热门出发城市</dt>
                    <dd><a href="#">北京</a> <a href="#">北京</a> <a href="#">北京</a> <a href="#">北京</a> <a href="#">北京</a>
                        <a href="#">北京</a> <a href="#">北京</a></dd>
                </dl>
                <dl>
                    <dt>其他出发城市</dt>
                    <dd class="p_noborderb"><a href="#">北京</a> <a href="#">北京</a> <a href="#">北京</a> <a href="#">北京</a>
                        <a href="#">北京</a> <a href="#">北京</a> <a href="#">北京</a> <a href="#">北京</a> <a href="#">北京</a>
                        <a href="#">北京</a> <a href="#">北京</a> <a href="#">北京</a> <a href="#">北京</a> <a href="#">北京</a>
                    </dd>
                </dl>
            </div>
        </div>
        <form class="p_form-search">
            <input type="" class="p_search_in" value="输入关键字">
            <input type="" class="p_search_btn" style="float: left; background-position: -271px 0px;" value="">
            <i class="p_recor"></i>
        </form>
    </div>
    <span class="p_hot-travel">
        <a target="_blank" href="" hidefocus="false">小区房</a>
        <a target="_blank" href="" hidefocus="false">海景房</a>
    </span></div>
<!-- 搜索框区域\\ -->
<!-- //搜索框区域 -->
<!--主要内容开始-->
<!-- 小导航开始  -->
<div class="l_lv-crumbs l_wrap">
    <p>
        <b>您当前所处的位置：</b>
        <a href="#">首页</a> &gt; <a href="#">二手房</a> &gt; 列表
    </p>
</div>
<!-- 小导航结束  -->
<div class="l_ui-content l_wrap">

    <div class="search-aside">
        <!-- 本期团购\\ -->
        <div class="aside-box lv-bd side-stuan clearfix">
            <h3 class="side-title"><strong>本期团购</strong>
                <small>进行中</small>
            </h3>
            <ul class="stuan-list">
                <li class="stuan-item">
                    <p class="img">
                        <a target="_blank" href="#"><img src="images/9O0MF.jpg" width="178" height="89"></a>
                        <span class="tran-bg"></span><span class="stuan-time">19天0时35分57秒</span></p>
                    <p class="tuan-title"><a rel="nofollow" target="_blank" href="#">国庆大放送</a>
                    </p>
                    <p><a rel="nofollow" target="_blank" href="#" class="abtn abtn-block">立即抢购</a>
                        <span>¥<i>14600</i></span>
                        <dfn>¥<i>13179</i></dfn>
                    </p>
                </li>
            </ul>
            <p><a rel="nofollow" class="link-more" target="_blank" href="#">更多团购产品&gt;&gt;</a></p>
        </div>
        <!-- //本期团购 -->
        <div class="aside-box lv-bd travel-index">

            <h3 class="side-title">
                <a target="_blank" href="#">合租</a>
            </h3>

            <a target="_blank" href="#">
                <img src="images/1288335977153_small.jpg" width="178" height="89">
            </a>
            <p>
                合租优惠更多
                <a rel="nofollow" class="link-more" target="_blank" href="#">更多&gt;&gt;</a>
            </p>
        </div>
        <!-- //旅推荐 -->

        <!-- 点评\\ -->
        <div class="aside-box lv-bd side-reviews">

            <h3 class="side-title">
                <a target="_blank" href="#">人气最高</a>
            </h3>

            <div id="cmt_data_div" class="score-reviews" placeid="3546"><p class="score-total">
                <dfn><i>4.31</i>分</dfn>
                <span class="re-star"><span class="starbg"><i style="width:86.2%"></i></span></span>
                <a rel="nofollow" class="comment-num" href="#" target="_blank">45条评论</a>
            </p>
                <p class="score-item">
                    人气：4.55分<br>
                    规模：4.40分<br>
                    环境：4.58分<br>
                    服务：4.48分<br>
                </p>
            </div>
        </div>
        <!-- //点评 -->
        <!-- 攻略\\ -->
        <div id="guide_data_div" class="aside-box lv-bd side-guide" placeid="3546">
            <h3 class="side-title">
                <a id="guide_title_a" target="_blank" href="#">购买攻略</a>
            </h3>
            <div class="imgtext clearfix">
                <p class="img">
                    <a target="_blank" href="#">
                        <img src="images/20140327044937977.jpg" width="89" height="124"></a>
                </p>
                <p>攻略版本：<br>第六版<br><br>更新时间：<br>2017-03-27<br>
                    <a target="_blank" class="abtn abtn-gray" href="#">去下载</a>
                </p>
            </div>
            <ul class="guide-list">
                <li class="guide-item">
                    <a target="_blank" href="#">蓝光天骄城</a>
                    <span class="guide-item-info">2014-06-01&nbsp;&nbsp;&nbsp;&nbsp;浏览39次</span>
                </li>
                <li class="guide-item">
                    <a target="_blank" href="#">金地小区</a>
                    <span class="guide-item-info">2014-05-23&nbsp;&nbsp;&nbsp;&nbsp;浏览57次</span>
                </li>
            </ul>
        </div>
        <!-- //攻略 -->

        <!-- //推荐-->

    </div>
    <!-- // div .search-aside 右边结束-->

    <div class="search-main search-line">
        <div class="search-result-nav">
            <ul class="search-nav hor clearfix">
                <li class="item-all search-nav-item qbgl search-nav-item-selected ">
                    <a href="#"><b>全部楼盘</b></a>
                </li>
                <li class="search-nav-item zyx">
                    <a href="#"><b>楼盘</b>搜索
                    </a>
                </li>

            </ul>
        </div>
        <div class="l_cl"></div>


        <!-- 搜素筛选开始\\ -->
        <div class="search-filter">
            <div class="filter-info clearfix"><span class="result-info">共找到<i>35</i>条结果。</span>
                <dl id="your-choices" class="your-choices">
                </dl>
            </div>


            <ul class="filter-tags u-zyx">
                <li>
                    <a href="javascript:void(0);" class="view-more">更多<i class="arrow"></i></a>
                    <span>区域：</span>
                    <p>
                        <a rel="nofollow" class="s-tag selected" href="#">不限</a>
                        <a rel="nofollow" class="s-tag " href="#">盘龙区</a>
                        <a rel="nofollow" class="s-tag " href="#">五华区</a>
                        <a rel="nofollow" class="s-tag " href="#">官渡区</a>
                    </p>
                </li>
                <li>
                    <a href="javascript:void(0);" class="view-more">更多<i class="arrow"></i></a>
                    <span>地铁：</span>
                    <p>
                        <a rel="nofollow" class="s-tag selected" href="#">不限</a>
                        <a rel="nofollow" class="s-tag " href="#">地铁一号线</a>
                        <a rel="nofollow" class="s-tag " href="#">地铁二号线</a>

                    </p>
                </li>

                <li>
                    <a href="javascript:void(0);" class="view-more">更多<i class="arrow"></i></a>
                    <span>价格：</span>
                    <p>
                        <a class="s-tag selected" href="#">不限</a>
                        <a class="s-tag " href="Z1131">4000以下</a>
                        <a class="s-tag " href="Z1020">4000-600</a>
                        <a class="s-tag " href="Z929">6000以上</a>
                    </p>
                </li>
            </ul>
        </div>

        <!-- //搜素筛选结束 -->

        <!-- 线路搜索列表开始\\ -->
        <div class="search-result-box search-line-list">

            <!-- 筛选排序\\  .filter-order filter-commont filter-commont-desc -->

            <div class="filter-order">
                <div class="pageoper">
                    <span>1/2</span>
                    <a class="page-prev" href="#" title="上一页" rel="nofollow">
                        上一页<span class="page-arrow page-arrow-left"></span>
                    </a>
                    <a class="page-next" href="#" title="下一页" rel="nofollow">
                        下一页<span class="page-arrow page-arrow-right"></span>
                    </a>
                </div>
                <span class="lv-order current-order">推荐</span>
                <a rel="nofollow" href="#" class="price-order">价格<i class="ico-order"></i></a>
                <a rel="nofollow" href="#" class="price-order order-asc">价格<i class="ico-order"></i></a>
                <span class="priceform">
        <form class="J_price" action="#">
            <input type="text" val="" value="最低价" class="input-text zdj"> - 
            <input type="text" val="" value="最高价" class="input-text zgj">
            <input type="button" class="button" value="确定">
        </form>
    </span>
                <span class="checkbox"><a rel="nofollow" href="#">促销活动</a></span>
                <div class="result-search">
                    <input type="text" class="input-text input-result-search" val="" value="">
                    <input url="-Q1#list" type="button" class="button" value="搜索">
                </div>
            </div>
            <!-- //筛选排序结束 -->

            <!-- //列表开始 -->
            <div class="slist-item">
                <dl class="search-result-item line-info">
                    <dt class="img">
                        <a rel="nofollow" target="_blank" href="#">
                            <img src="images/IWF73.jpg" width="168" height="86">
                        </a>
                        <span class="s-type">
                 环境优美
            </span>
                    </dt>
                    <dd class="info">
                        <dfn class="s-price">¥<i>15000</i>起</dfn>
                        <span class="tagsback" tip-title="返奖金"
                              tip-content=""><em>返</em><i>50元</i></span><br>
                        <a rel="nofollow" href="#/comment" target="_blank" class="comment-num comment-num01">156人查看</a>
                        <a rel="nofollow" href="#/comment" target="_blank" class="comment-num">361条点评</a>
                    </dd>

                    <dd class="intro">
                        <h5>
                            <a rel="nofollow" target="_blank" href="#"> 中房路易公元</a>
                        </h5>
                        <p class="promotions">一室一厅</p>
                        <p class="route">
                            <span>小户型</span><span>三环</span><span>楼房</span><br>

                            穿金路处
                            <a rel="nofollow" class="link-more" target="_blank" href="#">了解更多</a>
                        </p>
                    </dd>
                </dl>
                <dl class="search-result-item line-info">
                    <dt class="img">
                        <a rel="nofollow" target="_blank" href="#">
                            <img src="images/IWF73.jpg" width="168" height="86">
                        </a>
                        <span class="s-type">
                 环境优美
            </span>
                    </dt>
                    <dd class="info">
                        <dfn class="s-price">¥<i>15000</i>起</dfn>
                        <span class="tagsback" tip-title="返奖金"
                              tip-content=""><em>返</em><i>50元</i></span><br>
                        <a rel="nofollow" href="#/comment" target="_blank" class="comment-num comment-num01">156人查看</a>
                        <a rel="nofollow" href="#/comment" target="_blank" class="comment-num">361条点评</a>
                    </dd>

                    <dd class="intro">
                        <h5>
                            <a rel="nofollow" target="_blank" href="#"> 中房路易公元</a>
                        </h5>
                        <p class="promotions">一室一厅</p>
                        <p class="route">
                            <span>小户型</span><span>三环</span><span>楼房</span><br>

                            穿金路处
                            <a rel="nofollow" class="link-more" target="_blank" href="#">了解更多</a>
                        </p>
                    </dd>
                </dl>

            </div>
            <!-- //列表结束 -->

            <!-- //分页开始 -->
            <div class="mb10">
                <div class="pages rosestyle">
                    <span class="PageSel">1</span>
                    <a href="#" class="PageLink" title="第 2 页" rel="nofollow">2</a>
                    <a href="#" title="下一页" class="NextPage PageLink PageLink_page" rel="nofollow">下一页</a>
                </div>

                <!-- //分页结束 -->

            </div>
        </div>
        <!-- //线路搜索列表 -->

    </div><!-- // div .search-main -->
    <div class="l_cl"></div>

</div>
<!-- // 订购指南等开始 -->


<!-- // 订购指南等结束 -->
<!--主要内容结束-->
<div class="p_ad3 p_wrap"><img src="images/ad3.jpg" alt=""></div>
<!-- //页面底部 -->
<div class="p_footer p_wrap">
    <p class="p_footer-link">
        <a href="#" rel="nofollow">关于我们</a> |
        <a href="#" hidefocus="false">网站地图</a>|
        <a rel="nofollow" href="">用户体验平台</a>
    </p>
</div>
<div class="p_links p_wrap">
    <dl class="p_friendlink">
        <dt><strong>友情链接:</strong></dt>
        <dd>
            <a href="#">优购房往</a>
        </dd>
    </dl>

</div>

<!-- E bottom -->
<div class="p_ad4">
    <div class="p_tools">
        <a class="history" href="#">最近查看</a>
        <a class="kefu" href="#">在线客服</a>
        <a class="yijian" href="#">提提意见</a>
        <a class="top" href="#">返回顶部</a>
    </div>

</div>


</body>
</html>
