<!DOCTYPE html>
<html class="csstransitions cssanimations ic_webkit ic_chrome ic_latest">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta charset="utf-8">
    <title>详情</title>

    <link rel="stylesheet" type="text/css" href="../css/chanel.css">
    <link rel="stylesheet" href="../css/index.php2.css">
    <link rel="stylesheet" href="../css/buttons.css">
    <link rel="stylesheet" href="../css/orderV2.css">
    <link rel="stylesheet" href="../css/dialog.css">
    <link id="ui-components" rel="stylesheet" href="../css/ui-components.css">
    <link rel="stylesheet" href="../css/share_popup.css">
    <link rel="stylesheet" href="../css/select_share.css">
    <link rel="stylesheet" href="../css/select_share2.css">
    <script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="../js/chengtourUI.js"></script>
    <script type="text/javascript">

        $(function () {
            $('.dropdown').hover(function (e) {
                $(this).children('span').siblings('.lv_div').toggle();
                $(this).children('span').toggleClass('link_hover');
            });
            $('.lv_div').mouseover(function (e) {
                $('.lv_div').show();
            });

            $('.join-weixin .lvlink').hover(function (e) {
                $(this).siblings('.top-sub').toggle();
            });


            $('#goTopBtn').click(function (e) {
                $('body,html').animate({scrollTop: 0}, 1000);
            });

            $('.quick-menu li a').hover(function (e) {
                $(this).toggleClass('current-crumb');
                $(this).siblings('.menu-bd').toggle();
            });
            $('.ewm_box_xl').hover(function (e) {
                $(this).children('.zhiyin').toggle();
            });
            $('.search_pp_calendar_d li').hover(function (e) {
                $(this).children('.search_pp_calendar_d_box').css('border', '2px solid #abba88');
            }, function () {
                $(this).children('.search_pp_calendar_d_box').css('border', '2px solid #fff');
            });


            var divindex = 0;
            $('.search_pp_cal_nextm_icon').click(function (e) {
                divindex++;
                if (divindex > 2) {
                    divindex = 2;
                }
                $('.search_pp_calendar_box').eq(divindex).show().siblings('.search_pp_calendar_box').hide();
            });

            $('.search_pp_cal_nevm_icon').click(function (e) {
                divindex--;
                if (divindex < 0) {
                    divindex = 0;
                }
                $('.search_pp_calendar_box').eq(divindex).show().siblings('.search_pp_calendar_box').hide();
            });


            var topzhi = $('#scroll_nav').position().top
            $(window).scroll(function (e) {
                var thescrolltop = $(document).scrollTop();
                if (thescrolltop > topzhi) {
                    $('#scroll_nav').css({position: 'fixed', top: 0})
                } else {
                    $('#scroll_nav').css({position: 'static'})
                }
            });


            $('.p_join-weixin').hover(function (e) {
                $(this).children('.p_weixin').toggle();
            });

            $('.firstli').hover(function (e) {
                $(this).children('.p_lvlink').toggleClass('weixin')
            });

            $('.fu_top span').click(function (e) {
                $('.fu_top').hide();
            });

            var one = $('.qiehuana').position().top
            var two = $('.qiehuanb').position().top
            var three = $('.qiehuanc').position().top

            var four = $('.qiehuane').position().top

            var five = $('.qiehuang').position().top

            $(window).scroll(function (e) {
                var htop = $(document).scrollTop()
                if (htop > 400) {
                    $('.fuchuang').show();
                } else {
                    $('.fuchuang').hide();
                }
            });


            $(window).scroll(function (e) {
                var htop = $(document).scrollTop()
                if (htop > one) {
                    $('#scroll_nav li').eq(0).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if (htop > two) {
                    $('#scroll_nav li').eq(1).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if (htop > three) {
                    $('#scroll_nav li').eq(2).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if (htop > four) {
                    $('#scroll_nav li').eq(3).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if (htop > five) {
                    $('#scroll_nav li').eq(4).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if (htop > six) {
                    $('#scroll_nav li').eq(5).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if (htop > seven) {
                    $('#scroll_nav li').eq(6).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if (htop > eight) {
                    $('#scroll_nav li').eq(7).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }
            });


            $('#scroll_nav li').click(function (e) {
                $(this).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
            });


            $('.pnav-main li a').click(function (e) {
                $(this).parent().addClass('current_nav').siblings().removeClass('current_nav');
                return false;
            });

            $('.return_top').click(function (e) {

                $('body,html').animate({scrollTop: 0}, 1000);
            });

        })

        $(function () {
            $(".qijiashuoming").ui('lvtip', {
                hovershow: 200
            });
        })
    </script>

</head>
<body>
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
<div>
    <!--head start-->

    <div id="warp">
        <div class="main">


            <div class="dtl_infobox clearfix">


                <p class="bookNotes">本产品由优购房提供</p>

                <div class="dtl_tit">
                    <h1 class="dtl_tit_txt">蓝光·水岸公园</h1>
                    <!-- Baidu Button BEGIN -->
                    <div class="bdsharebuttonbox bdshare-button-style0-16" data-bd-bind="1402195481033">
                        <a href="" class="bds_more" data-cmd="more" hidefocus="false"></a>
                        <a href="" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间" hidefocus="false"></a>
                        <a href="" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博" hidefocus="false"></a>
                        <a href="" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博" hidefocus="false"></a>
                        <a href="" class="bds_renren" data-cmd="renren" title="分享到人人网" hidefocus="false"></a>
                        <a href="" class="bds_weixin" data-cmd="weixin" title="分享到微信" hidefocus="false"></a>
                    </div>
                    <script>window._bd_share_config = {
                        "common": {
                            "bdSnsKey": {},
                            "bdText": "",
                            "bdMini": "2",
                            "bdMiniList": false,
                            "bdPic": "",
                            "bdStyle": "0",
                            "bdSize": "16"
                        },
                        "share": {},
                        "image": {
                            "viewList": ["qzone", "tsina", "tqq", "renren", "weixin"],
                            "viewText": "分享到：",
                            "viewSize": "16"
                        },
                        "selectShare": {
                            "bdContainerClass": null,
                            "bdSelectMiniList": ["qzone", "tsina", "tqq", "renren", "weixin"]
                        }
                    };
                    with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];
                    </script>
                    <!-- Baidu Button END -->
                </div>
                <!--infobox-tit-->
                <script type="text/javascript">
                    $(function () {
                        $('.dtl_focuslist li').hover(function (e) {
                            var this_index = $(this).index();
                            $(this).children('span').removeClass('zz_panel');
                            $(this).siblings().children('span').addClass('zz_panel');
                            $(this).addClass('dtl_focuslist').siblings().removeClass('dtl_focuslist');
                            $('.dtl_crtimg li').eq(this_index).stop().fadeIn(500).siblings().hide();
                            li_num = this_index;
                        });

                        var timer2 = setInterval(banner_autoplay, 3000)
                        var li_num = 0;

                        function banner_autoplay() {
                            li_num++;
                            if (li_num > 3) {
                                li_num = 0;
                            }
                            $('.dtl_focuslist li').eq(li_num).children('span').removeClass('zz_panel');
                            $('.dtl_focuslist li').eq(li_num).siblings().children('span').addClass('zz_panel');
                            $('.dtl_focuslist li').eq(li_num).addClass('dtl_focuslist').siblings().removeClass('dtl_focuslist');
                            $('.dtl_crtimg li').eq(li_num).stop().fadeIn(500).siblings().hide();
                        }

                        $('.dtl_focusbox').hover(function (e) {
                            clearInterval(timer2)
                        }, function () {
                            timer2 = setInterval(banner_autoplay, 3000)
                        });


                    })
                </script>
                <div class="dtl_boxinner">
                    <div class="dtl_box_left">
                        <div class="dtl_focusbox">
                            <ul class="dtl_crtimg">

                                <li style="display: list-item;">
                                    <img src="images/7HDMC.jpg" width="440px" height="220px"
                                         data-bd-imgshare-binded="1"></li>

                            </ul>
                        </div>


                    </div>
                    <!--boxleft-->
                    <div class="dtl_box_right clearfix">
                        <div class="dtl_box_r_topbox">
                            <div class="dtl_boxr_txt1">
                                <p>
                                    <label>市 场 价：</label>
                                    <span class="dtl_linetxt">¥14600</span>
                                    <br>
                                    <label>价：</label> <strong>¥ <em>12800</em></strong>
                                    <span class="qijia">起 &nbsp; <em class="qijiashuoming"
                                                                     tip-content='本起价根据市场决定'>起价说明</em></span>
                                </p>
                                <div class="xh-youhui">
                                    <label>优惠活动：</label>

                                    <div style="overflow:hidden;">
                                        <span class="tags101">促销</span>
                                        <ul class="youhui_tab" style="color:#f60;padding-left:4px;"></ul>
                                    </div>
                                </div>

                                <p class="c_m">
                                    <label>总体评价：</label>

                                    <span class="icon-type3">豪华</span>
                                    <small class="b_star">
								<span class="c_star star5">
									<i></i>
								</span>
                                    </small>
                                    <a rel="nofollow" href="http://www.lvmama.com/product/60971#row_5"
                                       hidefocus="false">点评数：1</a>
                                </p>

                                <p>
                                    <label>项目地址：</label>
                                    <span class="gray" style="float: left; max-width: 66%;">
								官渡区广福路与康福路交汇处
							</span>
                                    <br></p>
                                <div style="clear:both;"></div>
                                <label>近期开盘：</label>
                                预计2017年8月底推一期2#公寓
                                <br>
                                <label>支付方式：</label>
                                在线支付、电话支付、
                                <b title="银行转账金额至少不低于￥5000">银行转账</b>
                                、
                                <b title="分期支付金额至少不低于￥1000">分期支付</b>
                                <p></p>

                            </div>
                            <!--立即预定-->
                            <div class="play_date">
                                <form method="post" action="" onsubmit="return beforeSubmit(this);">
                                    <dl class="clearfix">
                                        <dt>
                                            <em>*</em>
                                            预订：
                                        </dt>
                                        <dd style="position: relative;">
                                            <div id="quickBooker1_tab2">
                                                <table class="free_dtl_pro_tab">

                                                    <tbody>
                                                    <tr class="p_60971">
                                                        <td>
														<span>
															(单价 <dfn>¥ <font class="product_60971_price"
                                                                             id="product_60971_price">12800</font></dfn>
															)
														</span>
                                                        </td>
                                                    </tr>


                                                    </tbody>
                                                </table>
                                            </div>

                                        </dd>

                                    </dl>
                                </form>

                                <p class="dtl_r_hint"></p>


                            </div>
                            <!--topbox-->
                            <div class="dtl_cfd_gonggao">
                                <h3>
                                    <b>公告</b>
                                </h3>
                                <ol class="dtl_gonggao_list">
                                    <li>价格有疑问请来电咨询客服</li>
                                </ol>
                            </div>
                            <!--gonggao-->

                        </div>
                        <!--boxright-->
                    </div>
                    <!--boxinner-->
                </div>
                <!--infobox-->
                <div class="dtl_tj">
                    <h3 class="dtl_tj_tit">产品经理推荐</h3>
                    <ul class="dtl_tj_list">
                        <li>★多人购买优惠更多</li>
                        <li>★多人购买优惠更多</li>

                    </ul>
                </div>
                <!--下部(产品经理推荐以下部分)-->
                <b style="display:inline-block; width:10px; height:10px; margin-bottom:10px;"><a name="tese"></a></b>
                <!--若是自主打包产品，显示“可选行程”标签-->
                <!--标签头部-->
                <ul class="scroll_nav_ul" id="scroll_nav" selfpack="false">
                    <li class="row_1 scroll_nav_current">
                        <a href="#tese">楼盘详情</a>
                    </li>

                    <li class="row_2">
                        <a href="#xingcheng">楼盘动态</a>
                    </li>

                    <li class="row_3">
                        <a href="#feiyong">户型</a>
                    </li>

                    <li class="row_4">
                        <a href="#tishi">重要提示</a>
                    </li>

                </ul>
                <!--scroll_nav end-->
                <!--楼盘详情-->
                <i id="row_1" class="pkg-maodian">&nbsp;</i>
                <h3 class="h3_tit qiehuana">
                    <span><a style="color:#fff;">楼盘详情</a></span>
                </h3>
                <div class="row pro_special" style="position:relative;">
                    <div class="pro_special_mid">
                        <p>
				<span style="font-family:Microsoft YaHei;font-size:16px;">
					<span style="color:#000000;">
						<strong>
							<span style="color:#000000;">
                              楼盘地址：广福路与康福路交汇处（邦盛建材城对面）
							</span>
						</strong>
					</span>
				</span>
                            <span style="font-family:Microsoft YaHei;font-size:16px;">
					<span style="color:#000000;">
						<strong>
							<span style="color:#000000;">。</span>
						</strong>
					</span>
				</span>
                        </p>
                        <p>
				<span style="font-family:Microsoft YaHei;font-size:16px;">
					<span style="color:#000000;">
						<img border="0" alt="" src="images/UVUQH.jpg" data-bd-imgshare-binded="1">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<img border="0" alt="" src="images/C9PO5.jpg" data-bd-imgshare-binded="1"></span>
				</span>
                        </p>
                        <p>
                            <strong>
                                <span style="font-family:Microsoft YaHei;color:#000000;font-size:16px;">房间类别</span>
                                <span style="font-family:Microsoft YaHei;color:#000000;font-size:16px;"></span>
                            </strong>
                        </p>

                        <span style="font-family:Microsoft YaHei;font-size:16px;">
				<span style="color:#000000;">
					<strong>
						<span style="color:#000000;">★10栋 - Water Bungalow 海上豪华别墅-˙水上屋</span>
					</strong>
				</span>
			</span>
                        <div></div>
                        <span style="font-family:Microsoft YaHei;font-size:16px;">
				<span style="color:#000000;">
					<strong>
						<span style="color:#000000;">别墅设施及配备分别有：</span>
					</strong>
				</span>
			</span>
                        <div></div>


                    </div>

                    <b style="display:inline-block; width:10px; height:10px; position:absolute; left:0; bottom:0; "><a
                            name="xingcheng"></a></b>
                    <!--pro_special_mid end-->
                </div>
                <!--pro_special end-->

                <!--楼盘动态-->
                <i id="row_2" class="pkg-maodian">&nbsp;</i>
                <h3 class="h3_tit qiehuanb">
                    <span><a style="color:#fff;">楼盘动态</a></span>
                </h3>
                <div class="row recommend_travel" style="position:relative;">
                    &nbsp;
                    <!-- 动态 -->
                    <div class="day day_rights_none">
                        <div class="day_rights"></div>
                        <!--day_rights end-->
                        <div class="day_left">
                            <div class="day_tit">
                                <b><strong>1</strong>
                                    <span>八月一日</span></b>
                            </div>
                            <!--day_tit end-->
                            <div class="day_introduction">蓝光·水岸公园（悦水苑（A2）Ⅲ）获预售证</div>
                            <div class="day_img">

                                <img class="day_img_left" width="320" height="240" src="images/0XPAM.jpg"
                                     data-bd-imgshare-binded="1">

                                <img class="day_img_left" width="320" height="240" src="images/0XPAM.jpg"
                                     data-bd-imgshare-binded="1">
                            </div>

                            <ul>
                                <li>
                                    <b>说明1</b>
                                    详细说明
                                </li>
                                <li>
                                    <b>说明2</b>
                                    详细说明
                                </li>
                            </ul>
                        </div>
                        <!--day_left end-->
                    </div>
                    <div class="day day_rights_none">
                        <div class="day_rights"></div>
                        <!--day_rights end-->
                        <div class="day_left">
                            <div class="day_tit">
                                <b><strong>1</strong>
                                    <span>八月一日</span></b>
                            </div>
                            <!--day_tit end-->
                            <div class="day_introduction">蓝光·水岸公园（悦水苑（A2）Ⅲ）获预售证</div>
                            <div class="day_img">

                                <img class="day_img_left" width="320" height="240" src="images/0XPAM.jpg"
                                     data-bd-imgshare-binded="1">

                                <img class="day_img_left" width="320" height="240" src="images/0XPAM.jpg"
                                     data-bd-imgshare-binded="1">
                            </div>

                            <ul>
                                <li>
                                    <b>说明1</b>
                                    详细说明
                                </li>
                                <li>
                                    <b>说明2</b>
                                    详细说明
                                </li>
                            </ul>
                        </div>
                        <!--day_left end-->
                    </div>


                    <b style="display:inline-block; width:10px; height:10px; position:absolute; left:0; bottom:0; "><a
                            name="feiyong"></a></b>
                </div>
                <!--recommend_travel end-->

                <!--户型-->
                <i id="row_3" class="pkg-maodian">&nbsp;</i>
                <h3 class="h3_tit qiehuanc">
                    <span><a style=" color:#fff;">户型</a></span>
                </h3>
                <div class="row statement_cost" style="position:relative;">
                    <dl>
                        <dt>户型</dt>
                        <dd>户型说明</dd>
                        <dd>户型说明</dd>
                        <dd>户型说明</dd>
                        <dd>户型说明</dd>
                    </dl>


                    <dl>
                        <dt>推荐</dt>
                        <dd>无</dd>
                    </dl>

                    <dl>
                        <dt>详细说明</dt>
                        <dd>无</dd>
                    </dl>
                    <b style="display:inline-block; width:10px; height:10px; position:absolute; left:0; bottom:0; "><a
                            name="tishi"></a></b>
                </div>
                <!--statement_cost end-->
                <!--重要提示-->
                <i id="row_4" class="pkg-maodian">&nbsp;</i>
                <h3 class="h3_tit qiehuane">
                    <span><a style="color:#fff;">重要提示</a></span>
                </h3>
                <div class="row important_prompt" style="position:relative;">

                    <dl>
                        <dt>购买须知须知</dt>
                        <dd>购买须知须知</dd>
                        <dd>
                            购买须知须知
                        </dd>
                        <dd>购买须知须知</dd>
                        <dd>购买须知须知</dd>
                    </dl>

                    <dl>
                        <dt>须知2</dt>
                        <dd>
                            须知2
                        </dd>
                    </dl>

                    <dl>
                        <dt>须知3</dt>
                        <dd>须知3</dd>
                    </dl>


                </div>
                <!--important_prompt end-->


                <!--相关产品推荐-->
            </div>
            <!--main end-->
        </div>
        <!--warp end-->
    </div>
</div>
<!--===== 底部文件区域 S ======-->
<div class="hh_cooperate">
    <p>
        <b>热门精选：</b>
        <span>

<a target="_blank" href="" hidefocus="false">推荐1</a>
</span>
    </p>
</div>

</body>
</html>