<?php
class M_mitra extends CI_Model{

    function tampil_data(){
        $query=$this->db->query("SELECT * FROM tbl_agen_resmi WHERE id > 1 order by nama ASC");
        return $query;
    }
    
    function edit_data($a){
        $query=$this->db->query("SELECT * FROM tbl_agen_resmi WHERE id = '$a'");
        return $query;
    }

    public function tampil_deposit($a){
        $query=$this->db->query("SELECT * FROM v_deposit WHERE id_koperasi = '$a'");
        return $query;
    }
    
    function edit_deposit($a){
        $query=$this->db->query("SELECT * FROM v_deposit WHERE id = '$a'");
        return $query;
    }
}