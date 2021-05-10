<?php
class M_iklan extends CI_Model{

  function tampil_data(){
    $query=$this->db->query("SELECT * FROM tbl_iklan");
    return $query;
  }

  function cari_iklan($a){
    $query=$this->db->query("SELECT * FROM tbl_iklan WHERE id_iklan LIKE '%$a%' LIMIT 1")->result();
    return $query;
  }

  function edit_data($a){
    $query=$this->db->query("SELECT * FROM tbl_iklan WHERE id_iklan = '$a'");
    return $query;
  }
}