<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
        <?= $title ?><small> 7INDORA</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-users"></i> <?= $title ?></a></li>
        </ol>
    </section>
    <section class="content">    
        <div class="row">
            <div class='col-md-12'>
                <div class='panel panel-white' id="header">
                    <div class='panel-heading clearfix'>
                        <div class='col-md-10'>
                            <h4 id="warna">Selamat datang di <b>7INDORA</b></h4>
                        </div>
                        <div id="tgl-login">
                            <h4><strong><?= tanggal_indo(date('Y-m-d')) ?></strong></h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <center><p><?php  echo $this->session->flashdata('message'); ?></p></center>
            </div>
            <div class="col-md-12">                
                <div class="box">
                    <div class="box-header with-border">
                        <h2 class="box-title"><b><i class="fa fa-users"></i> Data Anggota Aktif</b></h2>
                    </div>
                    <div class="box-body">
                    <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#modal-anggota" data-backdrop="static" data-keyboard="false"><i class="fa fa-plus-square"></i> <small>Tambah Anggota</small></button>
                        <table id="example2" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th width="40">No</th>
                                    <th>No. Anggota</th>
                                    <th>NIK</th>
                                    <th>Nama Anggota</th>
                                    <th>Pekerjaan</th>
                                    <th>No. HP</th>
                                    <th>Status</th>
                                    <th>Tgl. Register</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no = 1; foreach($anggota as $a) : ?>
                                <tr>
                                    <td><?= $no++ ?></td>
                                    <td><?= $a->no_anggota ?></td>
                                    <td><?= $a->ktp ?></td>
                                    <td><?= $a->nama ?></td>
                                    <td><?= $a->pekerjaan ?></td>
                                    <td><?= $a->no_hp ?></td>
                                    <td>
                                        <?php if($a->status == 'Y'){
                                            echo 'Aktif';
                                        }else{
                                            echo 'TIdak Aktif';
                                        } ?>
                                    </td>
                                    <td><?= tanggal_indo(substr($a->tgl_registrasi,0,10)) ?></td>
                                    <td>
                                        <a href="keanggotaan/anggota/edit/<?= $a->id_user ?>" class="btn btn-success" title="Edit Data"><i class="fa fa-edit"></i></a>
                                        <a href="keanggotaan/anggota/hapus/<?= $a->id_user ?>" class="btn btn-danger" title="Hapus Data"  onClick='return confirm("Apakah anda yakin akan menghapus data ini ?")'><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>
                                <?php endforeach ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>  
</div>