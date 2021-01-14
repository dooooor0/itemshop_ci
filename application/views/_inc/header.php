<!DOCTYPE html>
<html lang="kr">
<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# article: http://ogp.me/ns/article#">
    <title>Item Shop</title>
    <meta http-equiv="Content-Type" content="text/html"; charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1, user-scalable=no, target-densitydpi=medium-dpi"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="Description" content="VSPHOENIX Xとアプリの連動で楽しむ！「COLLECTION SCREEN（コレクションスクリーン）」">
    <meta name="keywords" content="VSPHOENIX X,コレクション,ダーツ,スクリーン,フェニックスX,COLLECTION SCREEN,PHOENIXDARTS">
    
    <!-- favicon -->
    <link rel="shortcut icon" href="//test-images.phoenixdarts.com/itemshop/jp/favicon.ico?v=2" type="image/x-icon" />
    <link rel="shortcut icon" href="//test-images.phoenixdarts.com/itemshop/jp/favicon_pc.ico?v=3" type="image/x-icon" />
    <link rel="shortcut icon" href="//test-images.phoenixdarts.com/itemshop/jp/favicon_collection.ico?v=4" type="image/x-icon"> 

    <!-- Core css -->
    <!-- <link rel="stylesheet" href="https://test-images.phoenixdart.com/itemshop/jp/css/sub_page.css" type="text/css" media="all" /> -->
    <link rel="stylesheet" href="//test-images.phoenixdart.com/itemshop/jp/css/layout.css" type="text/css" media="all" />
    <link rel="stylesheet" href="//test-images.phoenixdart.com/itemshop/jp/css/ui_jp.css" type="text/css" media="all" />

    <link rel="stylesheet" type="text/css" href="https://test-images.phoenixdart.com/itemshop/jp/css/cssreset-min.css" media="all">
    <link rel="stylesheet" type="text/css" href="https://test-images.phoenixdart.com/itemshop/jp/css/hic_v6.css" media="all">
    <link rel="stylesheet" type="text/css" href="https://test-images.phoenixdart.com/itemshop/jp/css/basic.css" media="all">
     <link rel="stylesheet" type="text/css" href="https://test-images.phoenixdart.com/itemshop/jp/css/ui.css" media="all"> 
    <!-- <link rel="stylesheet"  href="https://test-images.phoenixdart.com/itemshop/jp/css/ui_jp.css" type="text/css" media="all"> -->
    
    
    <!-- <link rel="stylesheet" type="text/css" href="https://vs.phoenixdarts.com/css/hic_contents_v2.css"> -->
    <!-- <link rel="stylesheet" type="text/css" href="https://vs.phoenixdarts.com/css/hic_ui.css"> -->

    <!-- createjs -->
    <script src="https://code.createjs.com/1.0.0/createjs.min.js"></script>
    <script src="https://cdn.rawgit.com/ics-creative/ParticleJS/release/1.0.0/libs/particlejs.min.js"></script>
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    
      ga('create', 'UA-42877593-1', 'auto');
      ga('send', 'pageview');
    
    </script>
</head>
<div class="wrap">
    <div class="wrapInner">	
        <header id="id_header" class="logined" style="display:block;">
            <div class="container">
                <h1 id="logo"><a href="https://test-vs.phoenixdart.com/jp">PHOENIXDARTS</a></h1>

                <ul class="head-login-info">
                    <li class="account_name"><a href="https://test-vs.phoenixdarts.com/jp/account">ID:<?php echo $row->m_id;?></a></li>
                    <li><a href="https://test-vs.phoenixdarts.com/jp/main/top">MY PAGE</a></li>
                    <li><a href="https://test-vs.phoenixdarts.com/jp/mypage_option"><img height="20" alt="設定" src="//test-images.phoenixdart.com/itemshop/jp/images/v6_gnb/btn-setting.png" class="ico">設定</a></li>
                    <li><a class="btn_card" href="#"><img height="26" alt="カード" src="//test-images.phoenixdart.com/itemshop/jp/images/gnb_footer/main/menu-cardlist-w.png"></a></li>
                </ul>

                <!--cardmenu -->               
                <div class="card_select" style="display:none;">
                    <span></span>
                    <ul>
                        <li>
                            <a class="active" href="/cardinfo/change?c_seq=1532077">
                                <img height="18" alt="" src="//test-images.phoenixdart.com/itemshop/jp/images/v6_gnb/rating30/p_21.png">"PHOENIXDARTSJ"
                            </a>
                        </li>
                    </ul>
                    <p>カードは3枚まで登録できます。</p>
                    <div class="btnArea">
                    <a class="btn_default" href="https://test-vs.phoenixdarts.com/jp/card">カード管理</a>
                    </div>
                </div>
            </div>
                  
            <div class="head-menu" id="gnb_sub_menu">       
                <div class="container"> 
                </div>
            </div>
        </header>
        <div class="itemshop_gnb">
            <div class="gnb">
                <ul>
                    <li class="logo"><a href="/?sc_lid=primary_navi_logo"><img src="//test-images.phoenixdart.com/itemshop/jp/images/common/logo_itemshop.png" width="96" alt="ItemShop"></a></li>
                    <li class="active"><a href="/?sc_lid=primary_navi_top"><span>TOP</span></a></li>
                    <li><a href="https://test-vs.phoenixdart.com/jp/setting?sc_lid=primary_navi_setting"><span>セッティング</span></a></li>
                    <li><a href="https://test-vs.phoenixdart.com/jp/purchase-item/parts?sc_lid=primary_navi_purchase_parts"><span>購入</span></a></li>
                </ul>
            </div>
            <div class="user_info top">
                <div class="user_info_bar">
                    <img class="ico_user_info" src="//test-images.phoenixdart.com/itemshop/jp/images/common/ico_user_info.png" />
                    <p class="user_id"><?php echo $row->realname?></p>
                    <p class="card_gold">
                        <span class="card_num"><?php echo $row->card_no?></span>
                    </p>
                    <p class="gold">
                        <span class="txt">소지</span>
                        <span class="gold">
                            <img src="//test-images.phoenixdart.com/itemshop/jp/images/common/ico_gold.png" /><?php echo number_format($row->goldpoint_sum)?>
                        </span>
                        <span class="pc">
                            <img src="//test-images.phoenixdart.com/itemshop/jp/images/common/ico_pc.png" />3,775
                        </span>
                    </p>
                    <div class="ico">
                            <a href="/beginner?sc_lid=primary_navi_beginner"><img src="//test-images.phoenixdart.com/itemshop/jp/images/common/ico_begin.png" /></a>
                        <a href="/user/info?sc_lid=primary_cardinfo_user-info"><img src="//test-images.phoenixdart.com/itemshop/jp/images/common/ico_setting.png" alt="Setting" /></a>
                        <a href="/item-present" class="popup modalShow" id="item-present">
                            <img src="//test-images.phoenixdart.com/itemshop/jp/images/common/ico_gift.png" alt="GiftBox" />
                            <span style="display:none">0</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="btnsArea">
                <ul>
                    <li class="mb10">
                        <a class="btn white" href="https://vs.phoenixdarts.com/jp/mypage_option/option_pay_select_each_time?sc_cid=primary_cardinfo_pay">
                            <img class="mr5 mb0" src="//test-images.phoenixdart.com/itemshop/jp/images/common/ico_pc2.png" height="22"/><span class="btn-ltxt">チャージ</span>
                        </a>
                    </li>
                    <li class="mb10">
                        <a class="btn white" href="/zphoenix-capsule?sc_lid=primary_navi_capsule">
                            <img class="mr5 mb0" src="//test-images.phoenixdart.com/itemshop/jp/images/common/ico_capsule.png" height="22"/><span class="btn-ltxt">カプセル</span>
                        </a>
                    </li>
                    <li class="mb10 last">
                        <a class="btn white" href="https://vs.phoenixdarts.com/jp/help?sc_lid=primary_navi_help">
                            <img class="mr5 mb0" src="//test-images.phoenixdart.com/itemshop/jp/images/common/icon_help.png" height="20" style="margin-top:-2px; margin-left:-7px"/><span class="btn-ltxt">HELP</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
