<?php
class Welcome_model extends CI_Model {

    function __construct() {
        parent::__construct();
    }
    
    public function get() {

        $query=$this->db->get('itemcategory');
        return $query->result();
    }
}
?>
