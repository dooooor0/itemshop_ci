<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Index extends MY_Controller {

    protected $SET_DATA = array();

    public function __construct() {
        parent::__construct();
              
    }

    public function index() {
        
        $this->SET_DATA['promotionlist']=$this->Promotionlist->Promotionlist();
        $this->SET_DATA['phoenixcapsule']=$this->Phoenixcapsule->Phoenixcapsule();
        $this->SET_DATA['newitemlist']=$this->Newitemlist->Newitemlist();
        $this->SET_DATA['recommendlist']=$this->Recommendlist->Recommendlist();
        $this->SET_DATA['itemcategorylist']=$this->Itemcategorylist->Itemcategorylist();
        
        $this->itemcategory_msg = array(2 => 'プレイ中の画面背景を変更できるアイテム',
										  3 => 'CRICKETのマークアワードアイテム',
										  8 => 'BULLにヒットした時に表示されるアイテム',
										  22 => 'BULLにヒットした時に流れるサウンドアイテム',
										  7 => 'CRICKETナンバーのトリプルにヒットした時に表示されるアイテム',
										  6 => 'CRICKETナンバーのトリプルにヒットした時のサウンドアイテム',
										  9 => 'LOW TONやHAT TRICKなどのアワードムービー',
                                          1 => 'まとめてセッティングできるアイテム');

        //echo "<script>console.log( 'PHP_Console555: " .  $this->itemcategory_msg['2'] . "' );</script>";                                  
        
        $this->SET_DATA['newitemlist']=$this->Newitemlist->Newitemlist();
        $this->SET_DATA['rankinglist']=$this->Rankinglist->Rankinglist();
            
        $this->SET_DATA['myitemlist']=$this->Myitemlist->Myitemlist($this->membersinfo->c_seq);

        // echo "<script>console.log( 'PHP_Console333: " . $this->membersinfo->c_seq  . "' );</script>";
        $this->load->view('index', $this->SET_DATA);
        
    }


}