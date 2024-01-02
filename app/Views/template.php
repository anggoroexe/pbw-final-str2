<!DOCTYPE html>
<html lang="en">

<head>
  <title>ParkingSystem -
    <?= $judul; ?>
  </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>

  <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="/admin">ParkHome</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="mynavbar">
        <ul class="navbar-nav me-auto">
          <li class="nav-item">
          <a class="nav-link" href="/admin/transaksi">Transaksi</a>
          </li>
          <li class="nav-item">
          <a class="nav-link" href="/admin/history">history</a>
          </li>
          <li class="nav-item me-2">
            <?php if (logged_in()): ?>
              <a class="nav-link" href="/logout">Logout</a>
            <?php else: ?>
              <a class="nav-link" href="/login">Login</a>
            <?php endif; ?>
          </li>
        </ul>
        <!-- <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Cari Data Disini" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Cari</button>
        </form> -->
      </div>
    </div>
  </nav>

  <div class="container-fluid mt-3">
    <?php $this->renderSection('content'); ?>
  </div>

  <script>
      // create a function to update the date and time
      function updateDateTime() {
        // create a new `Date` object
        const now = new Date();

        // get the current date and time as a string
        const currentDateTime = now.toLocaleString();

        // update the `textContent` property of the `span` element with the `id` of `datetime`
        document.querySelector('#datetime').textContent = currentDateTime;
      }

      // call the `updateDateTime` function every second
      setInterval(updateDateTime, 1000);
    </script>
</body>

</html>