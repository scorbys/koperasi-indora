<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
        <?= $title ?><small> 7INDORA</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-money"></i> <?= $title ?></a></li>
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
                        <h2 class="box-title"><b><i class="fa fa-users"></i> Data Deposit <?= $nama ?></b></h2>
                    </div>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <a href="keanggotaan/mitra/deposit/<?= $id ?>" class="btn btn-success"><i class="fa fa-plus-square"></i> Tambah Deposit</a>
                                <a href="keanggotaan/mitra" class="btn btn-danger"><i class="fa fa-sign-out"></i> Kembali</a>
                            </div>
                        </div><hr>
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th width="40">No</th>
                                    <th>Bukti Deposit</th>
                                    <th>Nominal Deposit</th>
                                    <th>Tanggal Deposit</th>
                                    <th width="120">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no = 1; foreach($history as $a) : ?>
                                <tr>
                                    <td><?= $no++ ?></td>
                                    <td><center><a href="img/<?= $a->foto ?>" class="btn btn-warning" target="_blank">Lihat Foto</a></center></td>
                                    <td><?= rupiah($a->deposit) ?></td>
                                    <td><?= $a->tanggal ?></td>
                                    <td>
                                        <a href="keanggotaan/mitra/edit_deposit/<?= $a->id ?>" class="btn btn-success" title="Edit Data"><i class="fa fa-edit"></i></a>
                                        <a href="keanggotaan/mitra/hapus_deposit/<?= $a->id ?>" class="btn btn-danger" title="Hapus Data"><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>  
</div>