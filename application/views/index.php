<div class="content">
    <div class="main_pc">
        <div class="mainBanner">
            <div class="touchslider">
                <div class="touchslider-viewport" style="padding-bottom:0;">
                    <div >
                        <?php $i=0; foreach( $promotionlist as $row ): ?>
                            <div class="touchslider-item" >
                                <a href="<?php echo $row->href;?>"><img src="//test-images.phoenixdart.com/itemshop/jp/<?php echo $row->src;?>" alt="<?php echo $row->title;?>" /></a>
                                
                            </div>
                        <?php $i++; endforeach; ?>
                        <?php if($i == 0) : ?>
                            <div class="touchslider-item">                        
                                <a href="#">
                                    <p style="height:156px; background:#ddd; padding-top:70px;">現在進行中のプロモーションがありません。</p>
                                </a>
                            </div>
                        <?php endif;?>                      
                    </div>
                </div>
                <div class="nav-item">
                    <?php foreach( $promotionlist as $key=>$row ): ?>
                        <span class="touchslider-nav-item <?php echo $key == 0 ? 'touchslider-nav-item-current' : '';?>"><?php echo $key+1;?></span>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="mPaging">
                <span class="cnt"></span>
                <span class="cnt selected"></span>
                <span class="cnt"></span>
            </div>
        </div>
        <div class="conArea box" >
            <h2 class="title_bar">
                <p class="btn_none">フェニックスカプセル</p>
            </h2>                				
            <div class="listSt03 capsule">
                <div class="area">
                    <a href="/phoenix-capsule?sc_lid=top_capsule_area">
                        <div class="img">
                            <div class="corver point">
                                <span class="style"></span>
                                <img src="//test-images.phoenixdart.com/itemshop/jp/images/item/thumbnail/MS_capsule_all_thum.gif" alt=""/>
                                <div class="border"></div>
                                <em class="single_dual"></em>
                            </div>
                        </div>
                        <div class="txt">
                            <p class="tit">매일 1회 무료로 도전</p>
                            <p class="temName">이번의 핵심 아이템</p>
                        </div>
                    </a>

                    <div class="btnArea">
                        <a class="btn pink" href="/phoenix-capsule?sc_lid=top_capsule_btn">
                            <span>無料でまわす</span>
                            <img src="//test-images.phoenixdart.com/itemshop/jp/images/common/ico_btnst01.png" width="12" />
                        </a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="conArea main  newItem">
            <h2 class="title_bar">
                <p>NEWアイテム
                <a href="/purchase-item/parts?sc_lid=top_newitem_more">
                    <span>もっと見る
                        <img src="//test-images.phoenixdart.com/itemshop/jp/images/common/ico_btnst03.png" alt="" />
                    </span>
                </a>
            </h2>

            <div class="listSt02">
            <?php $i=0; foreach( $newitemlist as $row ): ?>
                <div class="area">
                    <?php if($row->categoryid == 200000014) { ?>
                        <a href="/xscreen-items/itemDetail?item_id=<?=$row->itemid?>&sc_lid=top_newitem_item" >
                    <?php } else { ?>
                        <a href="/purchase-item/view?id=<?php echo $row->itemid;?>&sc_lid=top_newitem_item">
                    <?php } ?>
                        <div class="img">
                            <div class="corver">
                                <span class="<?php echo $row->custom_id;?>"><?php echo $row->custom_id;?></span>                           
                                <img src="//test-images.phoenixdart.com/itemshop/jp/<?php echo $row->thumbnail;?>" />
                                <div class="border"></div>
                                <em class="single_dual"><?php echo $row->dual_monitor == 2 ? 'Dual' : '';?></em>
                            </div>
                        </div>
                    </a>
                </div>
                <?php $i++; endforeach;?>
                <?php if($i == 0) : ?>
                    <p style="padding:43px 0">NEWアイテムがありません。</p>
                <?php endif;?>                                
            </div> 
        </div>

        <div class="conArea box" >
            <h2 class="title_bar">
                <p style="background:#7d7d7d;">特集</p>
            </h2>
            <div class="listSt01 recommend">
                <div class="area">
                    <ul>
                    <? $i=0; foreach( $recommendlist as $row ) { ?>
                        <li><a href="/promotion/recommendItem?id=<?=$row->id;?>"><div class="img"><img src="//test-images.phoenixdart.com/itemshop/jp//<?=$row->src;?>" alt="" /></div></a></li>
                    <? $i++; } ?>
                    </ul>					
                </div>
                <? if($i == 0) { ?>
                    <p style="width:100%; padding:88px 0; text-align:center; ">現在進行中のおすすめア<br />イテムがありません。</p>
                <? } ?>
            </div>
        </div> 

        <div class="conArea main category">
            <h2 class="title_bar">
                <p>アイテムカテゴリ</p>
            </h2>
            <div class="listSt02 ">
                <div class="area">
                    <ul>                
                    <? foreach($itemcategorylist as $row) { 
                                $a_url = ($row->id == 1)? '/purchase-item/set' : '/purchase-item/categoryResult?categoryid='.$row->id;
                                $i_class = ($row->id == 3)? 'markAward' : strtolower($row->label);
                    ?>
                    <li>
                            <a href="<?=$a_url?>">
                                <div class="Cat_img"><img src="//test-images.phoenixdart.com/itemshop/jp/<?=$row->thumbnail?>" alt=""/></div>
                                <div class="Cat_txt"><p><i class="<?=$i_class?>"></i> <?=strtoupper($row->label)?></p><span><?=$this->itemcategory_msg[$row->id]?></span></div>
                            </a>
                        </li>
                    <? } ?>
                    </ul>  
                </div>
            </div>
        </div>

        <div class="conArea box">
            <h2 class="title_bar">
                <p>ランキング
                    <a href="/purchase-item/ranking?sc_lid=top_rankingitem_more">
                        <span>もっと見る
                            <img src="//test-images.phoenixdart.com/itemshop/jp/images/common/ico_btnst03.png" alt="" />
                        </span>
                    </a>
                </p>
            </h2>
            <div class="listSt02 ranking">
                <?php foreach( $rankinglist as $key=>$row ): ?>
                    <div class="area" <?php echo $key == 2 ? 'style="border:none;"' : '';?>>
                        <?php if($row->categoryid == 200000014) {?>
                                <a href="/xscreen-items/itemDetail?item_id=<?=$row->itemid;?>&screen_type=<?=$row->screen_type?>&sc_lid=top_rankingitem_item-0<?php echo $key+1;?>">                     
                        <?php } else {?>
                            <a href="/purchase-item/view?id=<?php echo $row->itemid;?>&sc_lid=top_rankingitem_item-0<?php echo $key+1;?>">
                        <?php }?>
                            <div class="ico"><img src="//test-images.phoenixdart.com/itemshop/jp/images/common/ico_no<?php echo $key+1;?>.png" alt="" /></div>
                            <div class="img">
                                <div class="corver">
                                    <span class="<?php echo $row->custom_id;?>"><?php echo $row->custom_id;?></span>
                                    <img src="//test-images.phoenixdart.com/itemshop/jp/<?php echo $row->thumbnail;?>" />
                                    <div class="border"></div>
                                    <em class="single_dual"><?php echo $row->dual_monitor == 2 ? 'Dual' : '';?></em>
                                </div>
                            </div>
                            <div class="txt">
                                <p class="temStyle">
                                <?php foreach($rankinglist as $row) {
                            if($row->categoryid == 2) {
                            if($row->styletype == 1) {
                                    $row->custom_id = "pstyle";
                            } else if ($row->styletype == 2) {
                                    $row->custom_id = "mstyle";
                            }
                            } else if ($row->categoryid == 200000013) {
                                $row->custom_id = "sstyle";
                                }
                            }; ?>
                            <?php echo $row->custom_id;?>
                            </p>
                                <p class="temName"><?php echo $row->name;?></p>
                            </div>
                        </a>
                    </div>
                <?php endforeach;?>
            </div>
            <div class="conArea box minibnr">
                <a href="/xscreen-items/premiumList?sc_lid=purchase-parts_bnr_premiumlist">
                    <img src="//test-images.phoenixdart.com/itemshop/jp/images/bnr_IS-TOP_SCREEN.jpg" alt="" class="img-responsive">
                    <span>VSPHOENIX X SCREEN</span>
                </a>
            </div>
        </div>

        <!--s: vsx myitemlist-->
        <!-- <div id="xscreen">
            <img src="//test-images.phoenixdart.com/itemshop/jp/images/screen/screen_title_banner2.png" alt="X SCREEN" class="img-responsive">
            <div class="subtitle">
                <h2>MY SCREEN</h2>
                <p>所持しているSCREEN</p>
                <a href="#" id="menu_screen">
                    <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
                </a>
            </div>

            <div id="menu_screen_cont" style="display: none;">
                <span class="glyphicon glyphicon-triangle-top" aria-hidden="true"></span>
                <ul>
                    <li><a href="/xscreen-items/premiumList">PREMIUM SCREEN</a></li>
                    <li><a href="/xscreen-items/myItem">MY SCREEN</a></li>
                    <li><a href="/setting#menu_screen">セッティング</a></li>
                    <li><a href="/help/screen">SCREENとは？</a></li>
                </ul>
            </div>

            <div class="sort_box">
                <div class="styled-select">
                    <select id="searchOption" name="searchOption" maxlength="11">
                        <option value="1" alt="全て">全て</option> 
                        <option value="2" alt="利用可能">利用可能</option> 
                        <option value="3" alt="お気に入り">お気に入り</option> 
                        <option value="5" alt="PREMIUM" >PREMIUM</option>
                        <option value="6" alt="COLLECTION" >>COLLECTION</option>
                        <option value="7" alt="イベント">イベント</option>
                    </select>
                </div>
                <div class="styled-select">
                    <select id="orderOption" name="orderOption" maxlength="11">
                        <option value="1" alt="並び順">並び順</option>
                        <option value="2" alt="獲得日 昇順" >獲得日 昇順</option> 
                        <option value="3" alt="獲得日 降順">獲得日 降順</option> 
                    </select>
                </div>
            </div>   
        </div> -->
        <!--e: vsx myitemlist-->
    </div>
</div>
    <div id="blocker" class="backgroundBlack"></div>
    <div id="modalWindow" class="mPopup"></div>
<!--e:PC_div-->

<!--s:mobile_div-->

<!--e:mobile_div-->

<script type=text/javascript>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

//   $("#menu_screen").click(function () {
// 	$("#menu_screen_cont").slideToggle("fast");
// 	  return false;
// 	});

//     $('#searchOption').change(function(e){
// 		var search_option = $('#searchOption option:selected').val();
// 		var order_option = $('#orderOption option:selected').val();

// 		location.href = '/xscreen-items/index?search='+search_option+'&order_option='+order_option;
// 	});

// 	$('#orderOption').change(function(e){
// 		var search_option = $('#searchOption option:selected').val();
// 		var order_option = $('#orderOption option:selected').val();

// 		location.href = '/xscreen-items/index?search='+search_option+'&order_option='+order_option
// 	});
</script>

<?php include_once(dirname(__FILE__) ."/_inc/footer.php"); ?>