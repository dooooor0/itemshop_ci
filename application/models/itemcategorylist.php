<?php
class Itemcategorylist extends MY_Model {

    function __construct() {
        parent::__construct();
    }

    public function Itemcategorylist() {
        $result=array();

        $sql="SELECT a.id, a.label, (SELECT thumbnail FROM item WHERE categoryid = a.id AND thumbnail IS NOT NULL LIMIT 1)
        FROM itemshop.itemcategory a
        WHERE a.id IN (2,3,8,22,7,6,9,1) 
        ORDER BY array_position(array[2,3,8,22,7,6,9,1], a.id);";


// SELECT a.id, a.label, (SELECT thumbnail FROM item WHERE categoryid = a.id AND thumbnail IS NOT NULL LIMIT 1),
// (SELECT b.itemids FROM custom b, item d WHERE b.itemids = d.id) AS custom_id
// FROM itemshop.itemcategory a
// WHERE a.id IN (2,3,8,22,7,6,9,1)
// ORDER BY array_position(array[2,3,8,22,7,6,9,1], a.id);


        $query=$this->db->query($sql);
        
        if($query->num_rows() > 0 ) {
            $itemcategorylist = $query->result();
        }
        return $itemcategorylist;



    }

}
?>
