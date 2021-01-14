<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

    public $nationcode	= '';
    public $islogin		= '';
    public $membersinfo;
	public $cardinfo;
    // public $c_seq = '';


    function __construct() {
        parent::__construct();
        
        $this->load->database('');         
        
        $this->load->model('Promotionlist');
        $this->load->model('Phoenixcapsule');
        $this->load->model('Newitemlist');
        $this->load->model('Recommendlist');
        $this->load->model('Itemcategorylist');
        $this->load->model('Rankinglist');
        $this->load->model('Myitemlist');
        
        $this->islogin = $this->_islogin();
        $this->controller_login(); 
    }

    function controller_login()	{

        $this->load->model('Model_members');
        $this->load->library('encrypt');         
      
        $m_seq = $this->encrypt->decode($this->input->cookie('Lseq', TRUE));
        $m_id = $this->encrypt->decode($this->input->cookie('Lid', TRUE));

        $this->membersinfo = $this->Model_members->Membersinfo($m_id);      
        
        $data['row']=$this->Model_members->Membersinfo($m_id);
        $this->load->view('_inc/header', $data);

        //echo "<script>console.log( 'PHP_Console222222: " . $this->membersinfo->m_id  . "' );</script>";

    }

    public function _islogin()	{
		$Lidx	= ($this->input->cookie('Lidx', TRUE) != '') ? $this->escstr($this->input->cookie('Lidx', TRUE)) : '';
		$Lid	= ($this->input->cookie('Lid', TRUE) != '') ? $this->escstr($this->input->cookie('Lid', TRUE)) : '';
		$Lseq	= ($this->input->cookie('Lseq', TRUE) != '') ? $this->escstr($this->input->cookie('Lseq', TRUE)) : '';
		$Ltype	= ($this->input->cookie('Ltype', TRUE) != '') ? $this->escstr($this->input->cookie('Ltype', TRUE)) : '';

		if($Lidx == '' || $Lseq == '' || $Ltype == '' )		{
			return false;
		}
		else		{
			return true;
		}
    }
    
    function escstr($str)	{
		return pg_escape_string(trim($str));
	}

}