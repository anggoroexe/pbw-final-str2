<?= $this->extend('/template'); ?>
<?= $this->section('content'); ?>
<div class="container">
<div class="row">
        <div class="col">
            <h5>SELAMAT DATANG DI DASHBOARD ADMIN</h5>
            <hr>
            <p id="hiadmin">selamat pagi, admin selamat bekerja !</p>
        </div>
    </div>

    <script>
        var welcomeMessageElement = document.getElementById('hiadmin');
        var currentTime = new Date();
        var currentHour = currentTime.getHours();
        if (currentHour < 12) {
            welcomeMessageElement.textContent = 'selamat pagi, admin selamat bekerja !';
        } else if (currentHour < 18) {
            welcomeMessageElement.textContent = 'selamat siang, admin selamat bekerja !';
        } else {
            welcomeMessageElement.textContent = 'selamat malam, admin selamat bekerja !';
        }
    </script>
</div>
<?= $this->endSection(); ?>