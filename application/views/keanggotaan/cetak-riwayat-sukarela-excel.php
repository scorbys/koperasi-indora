<?php
    function tanggal_indo($tanggal){
        $aulan  = array (1 =>   'Januari',
                'Februari',
                'Maret',
                'April',
                'Mei',
                'Juni',
                'Juli',
                'Agustus',
                'September',
                'Oktober',
                'November',
                'Desember'
                );
        $split = explode('-', $tanggal);
        return $split[2] . ' ' . $aulan[ (int)$split[1] ] . ' ' . $split[0];
    }

    function rupiah($angka){    
        $hasil_rupiah = number_format($angka,0,',','.');
        return $hasil_rupiah; 
    }

    function rupiah2($angka){    
        $hasil_rupiah = "Rp " . number_format($angka,2,',','.');
        return $hasil_rupiah; 
    }
    
    header("Content-type: application/octet-stream");

    header("Content-Disposition: attachment; filename=$title.xls");
    
    header("Pragma: no-cache");
    
    header("Expires: 0");
?>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Cetak Data</title>
        <base href="<?= base_url() ?>"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap.min.css">
        <link rel="stylesheet" href="template/css/skins/skin-template.css">
        <link href="https://fonts.googleapis.com/css2?family=PT+Sans&display=swap" rel="stylesheet">
        <style>
            body{
                font-family: 'PT Sans', sans-serif;
                font-size : 14px;
            }
            .container{
                padding: 5mm;
            }
            table {
                border-collapse: collapse;
                width: 100%;
            }
            
            td{
                border: 0px solid #949494;
                text-align: left;
                padding: 2px;
                font-weight: 100;
            }
            th {
                border: 0px solid #949494;
                text-align: center;
                padding: 2px;
                font-weight: 900;
            }
            
            tr:nth-child(even) {
                background-color: #ffffff;
            }
            h4{
                line-height:25px;
            }
        </style>
    </head>
    <body onload="window.print();">
        <div class="row">
            <div class="col-xs-12">
                <center><h4><b>LAPORAN RIWAYAT SIMPANAN SUKARELA ANGGOTA</b></h4></center>
            </div>
        </div><br>
        
        <div class="row">
            <div class="col-xs-12 table-responsive">
                <table id="example2" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Tanggal Transaksi</th>
                            <th>No. Anggota</th>
                            <th>Nama Anggota</th>
                            <th>Nominal</th>
                            <th>Nama Petugas</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no_pokok = 1; foreach($sukarela as $c) : ?>
                        <tr>
                            <td><?= $no_pokok++ ?></td>
                            <td><?= $c->tanggal ?></td>
                            <td><?= $c->no_anggota ?></td>
                            <td><?= $c->nama_anggota ?></td>
                            <td><?= $c->nominal ?></td>
                            <td><?= $c->nama_admin ?></td>
                        </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>