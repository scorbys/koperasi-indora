<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mitra extends MY_Controller {
	function __construct(){
        parent::__construct();
		$this->load->model('m_login');
		$this->load->model('m_akun');
		$this->load->model('m_crud');
		$this->load->model('m_mitra');

		if($this->is_not_login()){
			redirect(base_url('login'));
		}

        if($this->is_not_keanggotaan()){
			show_404();
		}
    }

	public function index()
	{
		$data["title"]		= "Data Mitra Indora";
		$data['koperasi']	= $this->m_mitra->tampil_data()->result();
		$this->load->view('keanggotaan/head',$data);
		$this->load->view('keanggotaan/menu',$data);
		$this->load->view('keanggotaan/koperasi',$data);
		$this->load->view('keanggotaan/footer',$data);
    }

	public function tambah()
	{
		$data["title"]		= "Data Mitra Indora";
		$this->load->view('keanggotaan/head',$data);
		$this->load->view('keanggotaan/menu',$data);
		$this->load->view('keanggotaan/tambah-mitra',$data);
		$this->load->view('keanggotaan/footer',$data);
    }

	public function aksi_tambah()
	{
		$nama				= htmlspecialchars(addslashes(trim($_POST['nama'])));
		$alamat				= htmlspecialchars(addslashes(trim($_POST['alamat'])));
		$maps				= htmlspecialchars(addslashes(trim($_POST['maps'])));

		$data				= array(
							'nama' => $nama,
							'alamat' => $alamat,
							'saldo' => 0
		);

		$this->m_crud->tambah_data($data,'tbl_agen_resmi');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> <strong>Berhasil !</strong> Data mitra Indora berhasil disimpan.</div>');
		redirect(base_url('keanggotaan/mitra'));
	}

	public function edit($a)
	{
		$data["title"]		= "Data Mitra Indora";
		$data['edit']		= $this->m_mitra->edit_data($a)->result();
		$this->load->view('keanggotaan/head',$data);
		$this->load->view('keanggotaan/menu',$data);
		$this->load->view('keanggotaan/edit-mitra',$data);
		$this->load->view('keanggotaan/footer',$data);
    }

	public function aksi_edit()
	{
		$nama				= htmlspecialchars(addslashes(trim($_POST['nama'])));
		$alamat				= htmlspecialchars(addslashes(trim($_POST['alamat'])));
		$maps				= htmlspecialchars(addslashes(trim($_POST['maps'])));

		$data				= array(
							'nama' => $nama,
							'alamat' => $alamat,
							'saldo' => 0
		);

		$where				= array('id' => $_POST['id']);
		$this->m_crud->update_data('tbl_agen_resmi',$data,$where);
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> <strong>Berhasil !</strong> Data mitra Indora berhasil disimpan.</div>');
		redirect(base_url('keanggotaan/mitra'));
	}

	public function history($a)
	{
		$data["title"]		= "Data Deposit Mitra";
		$data['history']	= $this->m_mitra->tampil_deposit($a)->result();
		$data['nama']		= $this->m_mitra->edit_data($a)->row()->nama;
		$data['id']			= $a;
		$this->load->view('keanggotaan/head',$data);
		$this->load->view('keanggotaan/menu',$data);
		$this->load->view('keanggotaan/deposit',$data);
		$this->load->view('keanggotaan/footer',$data);
	}

	public function deposit($a)
	{
		$data["title"]		= "Data Deposit Mitra";
		$data['history']	= $this->m_mitra->tampil_deposit($a)->result();
		$data['nama']		= $this->m_mitra->edit_data($a)->row()->nama;
		$data['id']			= $a;
		$this->load->view('keanggotaan/head',$data);
		$this->load->view('keanggotaan/menu',$data);
		$this->load->view('keanggotaan/tambah-deposit',$data);
		$this->load->view('keanggotaan/footer',$data);
	}

	public function aksi_deposit()
	{
		$deposit			= str_replace(".", "", $_POST['deposit']);;
		$tanggal			= $_POST['tanggal'].' '.date('H:i:s');
		$id_koperasi		= $_POST['id_koperasi'];

		$nmfile 				= "deposit".'-'.time();
		$path   				= './img/';
		$config['upload_path'] 	= $path;
		$config['allowed_types']= 'gif|jpg|png|jpeg|bmp';
		$config['file_name'] 	= $nmfile;
		$this->upload->initialize($config);

		if ($this->upload->do_upload('foto')){
			$gbr 				= $this->upload->data();

			$data				= array(
								'foto' => $gbr['file_name'],
								'id_admin' => $this->session->userdata('7indora@id_user'),
								'id_koperasi' => $id_koperasi,
								'deposit' => $deposit,
								'tanggal' => $tanggal
			);

			$this->m_crud->tambah_data($data,'tbl_deposit');
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> <strong>Berhasil !</strong> Data deposit mitra Indora berhasil disimpan.</div>');
			redirect(base_url('keanggotaan/mitra/history/'.$id_koperasi));
		}else{
			$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> <strong>Gagal !</strong> Data deposit mitra Indora tidak berhasil disimpan.</div>');
			redirect(base_url('keanggotaan/mitra/history/'.$id_koperasi));
		}
	}

	public function edit_deposit($a)
	{
		$data["title"]		= "Data Deposit Mitra";
		$data['edit']		= $this->m_mitra->edit_deposit($a)->result();
		$data['id']			= $a;
		$this->load->view('keanggotaan/head',$data);
		$this->load->view('keanggotaan/menu',$data);
		$this->load->view('keanggotaan/edit-deposit',$data);
		$this->load->view('keanggotaan/footer',$data);
	}

	public function aksi_editdeposit()
	{
		$deposit			= str_replace(".", "", $_POST['deposit']);;
		$tanggal			= $_POST['tanggal'].' '.date('H:i:s');

		$nmfile 				= "deposit".'-'.time();
		$path   				= './img/';
		$config['upload_path'] 	= $path;
		$config['allowed_types']= 'gif|jpg|png|jpeg|bmp';
		$config['file_name'] 	= $nmfile;
		$this->upload->initialize($config);

		if ($this->upload->do_upload('foto')){
			$gbr 				= $this->upload->data();

			$data				= array(
								'foto' => $gbr['file_name'],
								'id_admin' => $this->session->userdata('7indora@id_user'),
								'deposit' => $deposit,
								'tanggal' => $tanggal
			);

			$where				= array('id' => $_POST['id']);
			$this->m_crud->update_data('tbl_deposit',$data,$where);
			unlink($path.$_POST['foto_lama']);
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> <strong>Berhasil !</strong> Data deposit mitra Indora berhasil disimpan.</div>');
			redirect(base_url('keanggotaan/mitra/history/'.$_POST['id_koperasi']));
		}else{
			$data				= array(
							'id_admin' => $this->session->userdata('7indora@id_user'),
							'deposit' => $deposit,
							'tanggal' => $tanggal
			);

			$where				= array('id' => $_POST['id']);
			$this->m_crud->update_data('tbl_deposit',$data,$where);
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> <strong>Berhasil !</strong> Data deposit mitra Indora berhasil disimpan.</div>');
			redirect(base_url('keanggotaan/mitra/history/'.$_POST['id_koperasi']));
		}
	}

	public function hapus_deposit($a)
	{
		$path   			= './img/';
        $tabel				= "tbl_deposit";
		$where 				= array('id' => $a);
		
		foreach($this->m_mitra->edit_deposit($a)->result() as $b)
		{
		    $foto           = $b->foto;
		}
		if(!empty($foto)){
		    unlink($path.$foto);
		}
		$this->m_crud->hapus($tabel,$where);
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> <strong>Berhasil !</strong> Data deposit mitra Indora berhasil dihapus.</div>');
		echo"<Script>window.location=history.go(-1)</script>";
	}
}