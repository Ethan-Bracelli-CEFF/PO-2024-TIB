<!doctype html>
<html lang="en">

<head>
  <title>TIB - QR Code</title>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta
    name="viewport"
    content="width=device-width, initial-scale=1, shrink-to-fit=no" />

  <!-- Bootstrap CSS v5.2.1 -->
  <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
    crossorigin="anonymous" />

  <!-- Custom -->
  <link rel="stylesheet" href="/style/style.css">
</head>

<?php
require_once('controller.php');

$tops = ReturnPlayers();
?>

<body>
  <?php require_once('header.php'); ?>
  <main class="d-flex">
    <div class="bg-light my-auto ms-5 position-relative" style="width: 550px; height: 550px;">
      <img src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=https://<?= $_SERVER['SERVER_ADDR'] ?>?poste=<?= $_GET['poste'] ?>" alt=""
        class="position-absolute start-50 top-50 translate-middle" style="width:500px; image-rendering: pixelated;">
    </div>
    <div class="flex-fill mx-5 my-auto" style="height: 550px;">
      <?php foreach ($tops as $p): ?>
        <div class="bg-light w-100 d-flex mb-3" style="height: 50px;">
          <div class="flex-fill my-auto ms-4 fs-3"><?= $p['nom'] ?></div>
          <div class="my-auto me-3 fw-bold fs-4"><?= $p['points'] ?> points</div>
        </div>
      <?php endforeach; ?>
    </div>
  </main>
  <?php require_once('footer.php'); ?>
  <!-- Bootstrap JavaScript Libraries -->
  <script
    src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
    crossorigin="anonymous"></script>

  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
    integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
    crossorigin="anonymous"></script>
</body>

</html>