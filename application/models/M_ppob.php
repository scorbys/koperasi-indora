<?php
class M_ppob extends CI_Model{

  function tampil_data(){
    $query=$this->db->query("SELECT * FROM tbl_ppob");
    return $query;
  }

  function tampil_data_produk(){
    $query=$this->db->query("SELECT * FROM tbl_produk_agratek ");
    return $query;
  }

  function edit_data_produk($a){
    $query=$this->db->query("SELECT * FROM tbl_produk_agratek WHERE id = '$a' LIMIT 1");
    return $query;
  }

  function tampil_data_limit(){
    $query=$this->db->query("SELECT * FROM tbl_ppob limit 9");
    return $query;
  }
    
  function cari_provider($a){
    $query=$this->db->query("SELECT * FROM tbl_ppob_nohp WHERE nomor = '$a'")->result();
    return $query;
  }
    
  function tampil_data_transaksi($a){
    //$query=$this->db->query("SELECT * FROM tbl_trx_ppob_mobile_pulsa WHERE id = '$a'");
    $query=$this->db->query("SELECT * FROM tbl_trx_ppob_agratek WHERE id_trx = '$a'");
    return $query;
  }
    
  function tampil_data_transaksi_ref_id($a){
    $query=$this->db->query("SELECT * FROM tbl_trx_ppob_mobile_pulsa WHERE ref_id = '$a'");
    return $query;
  }
    
  function tampil_data_riwayat_transaksi(){
    $query=$this->db->query("SELECT * FROM tbl_trx_ppob_mobile_pulsa WHERE id_user = ''");
    return $query;
  }
    
  /* function cari_provider($a){
    $query=$this->db->query("SELECT * FROM tbl_ppob_nohp WHERE nomor = '$a'")->result();
    return $query;
  } */

  public function tampil_nominal_pulsa($a,$b)
  {
    $query=$this->db->query("SELECT * FROM tbl_produk_agratek WHERE penyedia = '$a' AND kategori = '$b'");
    return $query;
  }

  public function tampil_riwayat()
  {
    $query=$this->db->query("SELECT * FROM tbl_riwayat WHERE keterangan = 'PPOB' AND penyedia = 'AGRATEK' ORDER BY tanggal DESC");
    return $query;
  }
}