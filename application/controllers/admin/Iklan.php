<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Iklan extends MY_Controller {
	function __construct(){
        parent::__construct();
		$this->load->model('m_login');
		$this->load->model('m_akun');
		$this->load->model('m_crud');
		$this->load->model('m_iklan');

		if($this->is_not_login()){
			redirect(base_url('login'));
		}

        if($this->is_not_admin()){
			show_404();
		}
    }

	public function index()
	{
		$data["title"]		= "Iklan";
		$data['iklan']		= $this->m_iklan->tampil_data()->result();
		$this->load->view('admin/head',$data);
		$this->load->view('admin/menu',$data);
		$this->load->view('admin/iklan',$data);
		$this->load->view('admin/footer',$data);
	}

	public function tambah()
	{
		$data["title"]		= "Promo";
		$this->load->view('admin/head',$data);
		$this->load->view('admin/menu',$data);
		$this->load->view('admin/tambah-iklan',$data);
		$this->load->view('admin/footer',$data);
	}

	public function aksi_tambah()
	{
		$input					= $this->input->post();
		$nmfile 				= "iklan".'-'.time();
		$path   				= './img/';
		$config['upload_path'] 	= $path;
		$config['allowed_types']= 'gif|jpg|png|jpeg|bmp';
		$config['file_name'] 	= $nmfile;
		$this->upload->initialize($config);

		if ($this->upload->do_upload('foto')){
			$gbr 				= $this->upload->data();
			
			$data					= array(
									'foto' => $gbr['file_name'],
									'deskripsi' => $input['deskripsi']
			);
			$this->m_crud->tambah_data($data,'tbl_iklan');
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> <strong>Berhasil !</strong> Data iklan berhasil disimpan.</div>');
			redirect(base_url('admin/iklan'));
		}
	}

	public function edit($a)
	{
		$data["title"]		= "Iklan";
		$data['edit']		= $this->m_iklan->edit_data($a)->result();
		$this->load->view('admin/head',$data);
		$this->load->view('admin/menu',$data);
		$this->load->view('admin/edit-iklan',$data);
		$this->load->view('admin/footer',$data);
	}

	public function aksi_edit()
	{
		$input					= $this->input->post();
		$nmfile 				= "iklan".'-'.time();
		$path   				= './img/';
		$config['upload_path'] 	= $path;
		$config['allowed_types']= 'gif|jpg|png|jpeg|bmp';
		$config['file_name'] 	= $nmfile;
		$this->upload->initialize($config);

		if ($this->upload->do_upload('foto')){
			$gbr 				= $this->upload->data();
			
			$data				= array(
								'foto' => $gbr['file_name'],
								'deskripsi' => $input['deskripsi']
			);
			$where				= array('id' => $input['id']);
			$this->m_crud->update_data('tbl_iklan',$data,$where);
			unlink('./img/'.$input['foto_lama']);
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> <strong>Berhasil !</strong> Data iklan berhasil disimpan.</div>');
			redirect(base_url('admin/iklan'));
		}
		else{
			$data				= array(
								'deskripsi' => $input['deskripsi']
			);
			$where				= array('id' => $input['id']);
			$this->m_crud->update_data('tbl_iklan',$data,$where);
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> <strong>Berhasil !</strong> Data iklan berhasil disimpan.</div>');
			redirect(base_url('admin/iklan'));
		}
	}

	public function hapus($a){
		$tabel		= 'tbl_iklan';
		$where		= array('id' => $a);
		$foto		= $this->db->query("SELECT * FROM tbl_iklan WHERE id = '$a' limit 1")->row()->foto;
		unlink('./img/'.$foto);
		$this->m_crud->hapus($tabel,$where);
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> <strong>Berhasil !</strong> Data iklan berhasil dihapus.</div>');
		redirect(base_url('admin/iklan'));
	}
	
}