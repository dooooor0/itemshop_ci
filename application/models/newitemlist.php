<?php
class Newitemlist extends MY_Model {

    function __construct() {
        parent::__construct();
    }

    public function Newitemlist() {
        $result=array();

        $sql="SELECT categoryid, 
                    item_locale.itemid, 
                    thumbnail, 
                    dual_monitor, 
                    custom.itemids as custom_id
            FROM   item_locale, 
                    item_price, 
                    custom
            WHERE  item_locale.status = 1 
                    AND item_locale.booktime < now() 
                    AND item_locale.isnew = 1 OR (item_locale.isnew = 0 and item_locale.booktime + (interval '1 month') >= now())
                    AND ( item_price.gold > 0 OR item_price.coin > 0 )
                    AND (item_locale.categoryid <> 200000014 OR item_locale.itemid in (select item_id from itemshop.vsx_screen_info where screen_type = 2))
                    AND item_locale.itemid not in ( custom.itemids )
            LIMIT   5 ;";

        $query=$this->db->query($sql);
            
        if($query->num_rows() > 0 ) {
            $newitemlist = $query->result();
        }
        return $newitemlist;
    }
}
?>