<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->database('');
        $this->load->model('Welcome_model');        
    }

    public function index() {
    
        $data['result']=$this->Welcome_model->get();
        $this->load->view('welcome_message', $data);      
    }
}


/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */