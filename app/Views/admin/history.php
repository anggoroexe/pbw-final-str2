<?= $this->extend('/template'); ?>
<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h3>Riwayat Transkasi</h3>
            <hr>
            <table class="table">
                <thead>
                    <tr>
                        <th>NO</th>
                        <th>ID Datakarcis</th>
                        <th>NoPol</th>
                        <th>Waktu Awal</th>
                        <th>Waktu akhir</th>
                        <th>History</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        $i = 1 + (6 * ($currentPage - 1));
                        foreach ($history as $data):
                    ?>
                    <tr>
                        <td scope="row">
                            <?= $i++; ?>
                        </td>
                        <td><?= $data['id_datakarcis']; ?></td>
                        <td><?= $data['nopol']; ?></td>
                        <td><?= $data['waktuawal']; ?></td>
                        <td>
                        <?php
                        if ($data['waktuakhir'] == '00:00:00') {
                            echo "-";
                        }else {
                            echo $data['waktuakhir'];
                        }
                        ?>
                        </td>
                        <td><?= $data['history']; ?></td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <?= $pager->links('karcis', 'karcis_pagination'); ?>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>