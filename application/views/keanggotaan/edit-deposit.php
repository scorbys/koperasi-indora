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
                        <h2 class="box-title"><b><i class="fa fa-edit"></i> Edit Deposit Mitra Indora</b></h2>
                    </div>
                    <div class="box-body">
                        <?php foreach($edit as $a) : ?>
                        <form action="keanggotaan/mitra/aksi_editdeposit" method="post" enctype="multipart/form-data">                                
                            <div class="form-group">
                                <label for="">Bukti Deposit</label><br>
                                <img src="img/<?= $a->foto ?>" alt="<?= $a->deposit ?>" width="150"><br><br>
                                <input type="hidden" name="id" value="<?= $a->id ?>">
                                <input type="hidden" name="id_koperasi" value="<?= $a->id_koperasi ?>">
                                <input type="file" name="foto">
                                <input type="hidden" name="foto_lama" value="<?= $a->foto ?>">
                            </div>
                            <div class="form-group">
                                <label for="">Nominal Deposit</label>
                                <input type="text" name="deposit" pattern="[A-Za-z 0-9]+" class="form-control" id="inputku" onkeydown="return numbersonly(this, event);" onkeyup="javascript:tandaPemisahTitik(this);" value="<?= $a->deposit ?>" placeholder="Nominal Deposit" required>
                            </div>
                            <div class="form-group">
                                <label for="">Tanggal Deposit</label>
                                <input type="date" name="tanggal" class="form-control" value="<?= substr($a->tanggal,0,10) ?>" required>
                            </div>
                            <div class="form-group">
                                <button class="btn btn-success"><i class="fa fa-save"></i> Simpan Data</button>
                                <a href="keanggotaan/mitra/history/<?= $a->id_koperasi ?>" class="btn btn-danger"><i class="fa fa-sign-out"></i> Kembali</a>
                            </div>
                        </form>
                        <?php endforeach ?>
                    </div>
                </div>
            </div>
        </div>
    </section>  
</div>