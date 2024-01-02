<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 10px;
        }

        h3 {
            color: #0066cc;
        }

        p {
            margin-bottom: 10px;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

    <div class="container">
        <h3>KarcisParkir</h3>
        <p><strong>NOTICKET</strong> <?php echo '#' . $generatedData['id']; ?></p>
        <p><strong>Kendaraan</strong>
        <?php
            if ($generatedData['jeniskendaraan'] == 0) {
                echo 'Mobil';
            } elseif ($generatedData['jeniskendaraan'] == 1) {
                echo 'Motor';
            }
        ?>
        </p>
        <p><strong>Nopol </strong> <?php echo $generatedData['nopol']; ?></p>
        <p><strong>Waktu Masuk </strong> <?php echo $generatedData['waktuawal']; ?> <hr> 
        biaya motor 1jam x 2000 
        <br>biaya mobil 1jam x 4000</p>
    </div>

</body>
</html>
