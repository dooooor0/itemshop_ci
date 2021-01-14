<?php
class Rankinglist extends MY_Model {

    function __construct() {
        parent::__construct();
    }

    public function Rankinglist() {

        $result=array();
        $thisYear = date('Y');
        $where = '';

        $select_table = "itemshop.user_item_history_".$thisYear;
		if (date('m') == '01')
		{
			$select_table = "itemshop.user_item_history_pt_total";
        }

            $sql="SELECT 
                    r.itemid,
                    l.categoryid,
                    l.name,
                    l.thumbnail, 
                    count(r.itemid),
                    (SELECT machine_type FROM itemshop.item where id=r.itemid) as machine_type,
                    (SELECT dual_monitor FROM itemshop.item where id=r.itemid) as dual_monitor,
                    i.styletype,
                    (SELECT screen_type FROM itemshop.vsx_screen_info WHERE item_id = r.itemid) as screen_type,
                    custom.itemids as custom_id
                FROM
                    ".$select_table." r
                    JOIN itemshop.item_locale l  ON l.itemid = r.itemid AND l.locale = r.locale
                    JOIN itemshop.item_price p   ON p.itemid = r.itemid AND p.locale = r.locale AND p.days=90
                    JOIN itemshop.item i   ON i.id = l.itemid
                    , itemshop.custom                    
                WHERE 
                    r.ctime BETWEEN now() - interval '1 month' AND now() 
                    AND r.locale = 'jp'
                    AND l.status = 1 
                    AND coalesce(l.expiretime, '9999-12-31') > now() 
                    AND l.itemid in ( custom.itemids )
                GROUP BY r.itemid, l.categoryid, l.name, l.thumbnail, i.styletype, custom_id
                ORDER BY count DESC, l.name
                LIMIT 3;";
  
        $query=$this->db->query($sql);

        // foreach($query as $row) {
        //     if($row->categoryid == 2) {
        //         if($row->styletype == 1) {
        //             $row->custom_id = "pstyle";
        //         } else if ($row->styletype == 2) {
        //             $row->custom_id = "mstyle";
        //         }
        //     } else if ($row->categoryid == 200000013) {
        //         $row->custom_id = "sstyle";
        //     }
        // }
        
        if($query->num_rows() > 0 ) {
            $rankinglist = $query->result();
        }
        
        return $rankinglist;
    }
}