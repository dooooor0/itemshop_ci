<?php
class Promotionlist extends MY_Model {

    function __construct() {
        parent::__construct();
    }

    public function Promotionlist() {
        $result=array();

        $sql="SELECT href, src, title FROM promotion WHERE sdate < now() AND edate > now() and type = '1'  ORDER BY orderno ASC, id DESC LIMIT 1";        
        $query=$this->db->query($sql);
        
        if($query->num_rows() > 0 ) {
            $promotionlist = $query->result();
        }
     
        return $promotionlist;

       
    }

}
?>
