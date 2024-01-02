<?= $this->extend('/template'); ?>
<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
        <h3 class="text-center">Detail Karcis</h3>
            <div class="card mx-auto mb-3" style="max-width: 540px;">
                <div class="row g-0">
                <div class="card-body">
                    <h5 class="card-title">Data Kendaraan</h5>
                    <dl class="row">
                        <dt class="col-sm-4">ID</dt>
                        <dd class="col-sm-8">#<?= $karcis['id']; ?></dd>

                        <dt class="col-sm-4">Jenis Kendaraan</dt>
                        <dd class="col-sm-8"><?= $karcis['id']; ?></dd>

                        <dt class="col-sm-4">Nomor Polisi</dt>
                        <dd class="col-sm-8"><?= $karcis['nopol']; ?></dd>

                        <dt class="col-sm-4">Status Bayar</dt>
                        <dd class="col-sm-8"><?= $karcis['statusbayar']; ?></dd>

                        <dt class="col-sm-4">Waktu Awal</dt>
                        <dd class="col-sm-8"><?= $karcis['waktuawal']; ?></dd>
                    </dl>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>