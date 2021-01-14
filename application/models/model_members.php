<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

Class Model_members extends MY_Model {

    public function __construct()	{
        parent::__construct();

    }


    public function Membersinfo($m_id)	{

        //echo "<script>console.log( 'PHP_Console: " . $m_id . "' );</script>";
		$sql = "SELECT
                goldpoint_sum, card_no, a.c_seq, a.passwd, a.name, a.email, tel, phone_no, receivesms, num, a.sex, secret_question, secret_answer,
                a.m_seq, receivemail, a.status, a.m_id, a.nationcode, num, charge_type, a.charge_id, login_cnt, a.ctime, realname, default_languagecode
            FROM
                basic.members a, basic.cardinfo b, basic.goldpoint_plyr_info c
            WHERE
                a.m_id = '$m_id'
            AND a.c_seq = b.c_seq
            AND a.c_seq = c.c_seq;";
               
        return $this->db->query($sql)->row();   
    }

}
