<?php
class Recommendlist extends MY_Model {

    function __construct() {
        parent::__construct();
    }

    public function Recommendlist() {
        $result=array();

        $sql="SELECT id, src FROM promotion WHERE sdate < now() AND edate > now() and type = '5' ORDER BY orderno ASC, id DESC";        
        $query=$this->db->query($sql);
        
        if($query->num_rows() > 0 ) {
            $recommendlist = $query->result();
        }
        return $recommendlist;
    }

}
?>
