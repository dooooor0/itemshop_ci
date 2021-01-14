<?php
class Myitemlist extends MY_Model {

    protected $locale = 'jp';
	private $screen_type = 1;

    function __construct() {
        parent::__construct();

    }

    public function Myitemlist($c_seq) {
        $result=array();

        $sql="SELECT    a.item_id                                       AS screen_item_id, 
                        c.item_id                                       AS user_item_id, 
                        To_char(c.expire_dt, 'YYYY-MM-DD')              AS expire_dt, 
                        To_char(Nvl(c.mdfy_dt, c.rgt_dt), 'YYYY/MM/DD') AS get_dt, 
                        a.screen_type, 
                        a.x_machine_type, 
                        a.sample_movie, 
                        a.secret_fg, 
                        b.status, 
                        b.NAME, 
                        b.thumbnail, 
                        b.screenshot1, 
                        b.screenshot2, 
                        b.item_rare, 
                        b.thumbnail2, 
                        c.default_fg, 
                        c.get_cnt, 
                        c.check_fg, 
                        c.del_fg, 
                        c.protect_fg, 
                        COALESCE(a.screen_kind, 1) AS screen_kind, 
                        (   SELECT Count(*) AS game_type 
                            FROM   itemshop.vsx_user_game_screen 
                            WHERE  c_seq = c.c_seq 
                            AND    item_id = c.item_id ) AS game_type,
                        (select array_to_string(array_agg(game_type),',') as game_type_num from itemshop.vsx_user_game_screen where c_seq = c.c_seq and item_id = c.item_id)
                FROM     itemshop.vsx_screen_info a, 
                        itemshop.item_locale b, 
                        itemshop.vsx_user_info c 
                WHERE    a.nationcode='JP' 
                AND      a.item_id = b.itemid 
                AND      a.nationcode = Upper(b.locale) 
                AND      a.item_id = c.item_id 
                AND      c.c_seq = '$c_seq'";

    //echo "<script>console.log( 'PHP_Console1: " . print_r($this->membersinfo->c_seq)  . "' );</script>";
        $query=$this->db->query($sql);
        
        if($query->num_rows() > 0 ) {
            $myitemlist = $query->result();
        }
        return $myitemlist;
        
        
    }
}
    