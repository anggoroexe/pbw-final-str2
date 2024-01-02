<?= $this->extend('/template'); ?>
<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h3>Daftar Karcis</h3>
            <span id="datetime"></span>
            <hr>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">IDTICKET</th>
                        <th scope="col">Kendaraan</th>
                        <th scope="col">NOPOL</th>
                        <th scope="col">WAKTU MASUK</th>
                        <th scope="col">WAKTU KELUAR</th>
                        <th scope="col">STATUSBAYAR</th>
                        <th scope="col">TOTALBAYAR</th>
                        <th scope="col">BAYAR</th>
                        <th scope="col">AKSI</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        $i = 1 + (6 * ($currentPage - 1));
                        foreach ($karcis as $b):
                            ?>
                        <tr>
                            <td scope="row">
                            <?= $i++; ?>
                            </td>
                            <td>#<?= $b['id']; ?></td>
                            <td>
                            <?php
                                if ($b['jeniskendaraan'] == 0) {
                                    echo 'Mobil';
                                } elseif ($b['jeniskendaraan'] == 1) {
                                    echo 'Motor';
                                }
                            ?>
                            </td>
                            <td><?= $b['nopol']; ?></td>
                            <td><?= $b['waktuawal']; ?></td>
                            <td>
                            <?php
                            if ($b['waktuakhir'] == '00:00:00') {
                                echo "-";
                            }else {
                                echo $b['waktuakhir'];
                            }
                            ?>   
                            </td>
                            <td style="color: white; background-color: <?php echo ($b['statusbayar'] == 1) ? 'green' : 'red'; ?>;">
                                <?php
                                    if ($b['statusbayar'] == 0) {
                                        echo 'BELUM DIBAYAR';
                                    } elseif ($b['statusbayar'] == 1) {
                                        echo 'SUDAH DIBAYAR';
                                    }
                                ?>
                            </td>
                            <td>
                            <?php
                                date_default_timezone_set('Asia/Jakarta');
                                $jenisKendaraan = $b['jeniskendaraan'];
                                $waktuAwal = $b['waktuawal'];
                                $waktuAkhir = $b['waktuakhir'];
                                $waktuAwalTimestamp = strtotime($waktuAwal);
                                $waktuAkhirTimestamp = strtotime($waktuAkhir);
                                $selisihJam = ceil(($waktuAkhirTimestamp - $waktuAwalTimestamp) / 3600);
                                $tarifPerJam = 0;
                                switch ($jenisKendaraan) {
                                    case 0:
                                        $tarifPerJam = 4000;
                                        break;
                                    case 1:
                                        $tarifPerJam = 2000;
                                        break;
                                    default:
                                        break;
                                }
                                if ($waktuAkhir == '00:00:00') {
                                    echo "-";
                                }else {
                                    $totalHarga = $selisihJam * $tarifPerJam;
                                    echo "$totalHarga";
                                }

                                ?>
                                </td>
                            <td><a href="/admin/bayar/<?= $b['id']; ?>" class="btn btn-primary">BAYAR</a></td>
                            <td><a href="/admin/hapus/<?= $b['id']; ?>" class="btn btn-danger">HAPUS</a></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <?= $pager->links('karcis', 'karcis_pagination'); ?>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>