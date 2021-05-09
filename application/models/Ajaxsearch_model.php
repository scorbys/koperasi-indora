<?php
class Ajaxsearch_model extends CI_Model
{
	function fetch_data($a)
	{
		//$query=$this->db->query("SELECT * FROM tbl_produk_ppob WHERE penyedia LIKE '%$a%' AND kategori = 'pulsa'");
		$query=$this->db->query("SELECT *, tbl_produk_agratek.harga+tbl_produk_agratek.fee_vikosha+tbl_produk_agratek.biaya_admin AS harga_jual FROM tbl_produk_agratek WHERE penyedia LIKE '%$a%' AND status != 'NO ACTIVE' AND kategori = 'pulsa'");
		return $query;		
	}
	
	function fetch_data_paket($a)
	{
		//$query=$this->db->query("SELECT * FROM tbl_produk_ppob WHERE penyedia LIKE '%$a%' AND kategori = 'pulsa'");
		$query=$this->db->query("SELECT *, tbl_produk_agratek.harga+tbl_produk_agratek.fee_vikosha+tbl_produk_agratek.biaya_admin AS harga_jual FROM tbl_produk_agratek WHERE penyedia LIKE '%$a%' AND status != 'NO ACTIVE' AND kategori = 'data'");
		return $query;		
	}
	
	function fetch_plntoken($a)
	{
		//$query=$this->db->query("SELECT * FROM tbl_produk_ppob WHERE penyedia LIKE '%$a%' AND kategori = 'pulsa'");
		$query=$this->db->query("SELECT *, tbl_produk_agratek.harga+tbl_produk_agratek.fee_vikosha+tbl_produk_agratek.biaya_admin AS harga_jual FROM tbl_produk_agratek WHERE penyedia LIKE '%$a%' AND status != 'NO ACTIVE' AND kategori = 'plntoken'");
		return $query;		
	}
}
?>