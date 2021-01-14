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
        <!-- <link rel="shortcut icon" href="/favicon.ico?v=2" type="image/x-icon" />
        <link rel="shortcut icon" href="/favicon_pc.ico?v=3" type="image/x-icon" />
        <link rel="shortcut icon" href="/favicon_collection.ico?v=4" type="image/x-icon">  -->

        <!-- Core css -->
        <!-- <link rel="stylesheet" href="https://test-images.phoenixdart.com/itemshop/jp/css/sub_page.css" type="text/css" media="all" /> -->
        <link rel="stylesheet" href="//test-images.phoenixdart.com/itemshop/jp/css/layout.css" type="text/css" media="all" />

        <link rel="stylesheet" type="text/css" href="https://test-images.phoenixdart.com/itemshop/jp/css/cssreset-min.css" media="all">
        <link rel="stylesheet" type="text/css" href="https://test-images.phoenixdart.com/itemshop/jp/css/hic_v6.css" media="all">
        <link rel="stylesheet" type="text/css" href="https://test-images.phoenixdart.com/itemshop/jp/css/basic.css" media="all">
        <link rel="stylesheet" type="text/css" href="https://test-images.phoenixdart.com/itemshop/jp/css/ui.css" media="all">
        <!-- <link rel="stylesheet"  href="https://test-images.phoenixdart.com/itemshop/jp/css/ui_jp.css" type="text/css" media="all"> -->
        
        
        <link rel="stylesheet" type="text/css" href="https://vs.phoenixdarts.com/css/hic_contents_v2.css">       
        <link rel="stylesheet" type="text/css" href="https://vs.phoenixdarts.com/css/hic_ui.css">

        <!-- Core css -->       
        <!--<link rel='stylesheet' href='/css/collection/font-awesome.min.css' type='text/css' media='all' />
        <link rel='stylesheet' href='/css/collection/animate.css' type='text/css' media='all' />
        <link rel='stylesheet' href='/css/collection/remodal-default-theme.css' type='text/css' media='all' />
        <link rel='stylesheet' href='/css/collection/remodal.css' type='text/css' media='all' />
        <link rel='stylesheet' href='/css/collection/app.css' type='text/css' media='all' /> --> 

        <!-- createjs -->
        <script src="https://code.createjs.com/1.0.0/createjs.min.js"></script>
        <script src="https://cdn.rawgit.com/ics-creative/ParticleJS/release/1.0.0/libs/particlejs.min.js"></script>
        <!-- <script type="text/javascript" src="/js/Collection/jquery-2.2.4.min.js"></script> -->
        <!-- <script src="https://test-images.phoenixdart.com/itemshop//js/Collection/remodal.min.js"></script>
        <script src="https://test-images.phoenixdart.com/itemshop//js/Collection/custom.js"></script> -->

	</head>
	<body>
	    <div class="wrap">
    		<div class="wrapInner">	
            <?php include_once(dirname(__FILE__) ."/header.php"); ?>
    			<div class="content">
                    <?php include_once(dirname(__FILE__) ."/views/index.php"); ?>
    			</div>
                <a class="go_top" href="#id_header"><span class="iconb iconb-arrow5"></span></a>
                <?php include_once(dirname(__FILE__) ."/footer.php"); ?>
    		</div>
        </div>
        <div id="blocker" class="backgroundBlack"></div>
        <div id="modalWindow" class="mPopup"></div>
        <form name="pcPurchaseMainForm" id="pcPurchaseMainForm" method="post" action="/mypage_option/option_pay_select_each_time?sc_cid=primary_cardinfo_pay">
        <input type="hidden" name="returnUrl" id="pcPurchaseReturnUrl" value="">
        </form>
    </body>
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    
      ga('create', 'UA-42877593-1', 'auto');
      ga('send', 'pageview');
    
    </script>
</html>

