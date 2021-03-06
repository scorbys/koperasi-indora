<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
        <?= $title ?><small> BANJAREJO</small>
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
                            <h4 id="warna">Selamat datang di <b>BANJAREJO</b></h4>
                        </div>
                        <div id="tgl-login">
                            <h4><strong><?= tanggal_indo(date('Y-m-d')) ?></strong></h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">                
                <div class="box">
                    <div class="box-header with-border">
                        <h2 class="box-title"><b><i class="fa fa-edit"></i> Tambah Simpanan Sukarela</b></h2>
                    </div>
                    <?php foreach($edit as $a) : ?>
                    <form action="admin/simpanan/aksi_edit/sukarela" method="post" enctype="multipart/form-data">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="">No. Anggota</label>
                                <input type="text" name="no_anggota" id="no_anggota" value="<?= $a->no_anggota ?>" class="form-control" placeholder="No. Anggota" required>
                                <input type="hidden" name="id_user" id="id_user" value="<?= $a->id_user ?>">
                                <input type="hidden" name="id_simpanan" value="<?= $a->id_simpanan ?>">
                            </div>
                            <div class="form-group">
                                <label for="">Nama Anggota</label>
                                <input type="text" name="nama_anggota" value="<?= $a->nama_anggota ?>" class="form-control" placeholder="Nama Anggota" required readonly>
                            </div>
                            <div class="form-group">
                                <label for="">Tanggal Pembayaran</label>
                                <input type="date" name="tgl" class="form-control" value="<?= $a->tgl ?>" required>
                            </div>
                            <div class="form-group">
                                <label for="">Nominal Yang di Bayarkan</label>
                                <input type="text" name="nominal" class="form-control" onkeypress="return hanyaAngka(event)" value="<?= $a->nominal ?>" placeholder="Nominal Yang di Bayarkan" required>
                            </div>
                            <div class="form-group">
                                <button class="btn btn-success"><i class="fa fa-save"></i> Simpan Data</button>
                                <a href="admin/simpanan/sukarela" class="btn btn-danger"><i class="fa fa-sign-out"></i> Kembali</a>
                            </div>
                        </div>
                    </form>
                    <?php endforeach ?>
                </div>
            </div>
        </div>
    </section>  
</div>