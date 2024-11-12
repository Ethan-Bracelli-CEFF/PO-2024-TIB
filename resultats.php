<!doctype html>
<html lang="en">

<head>
    <title>Inscription</title>
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
require_once("controller.php");

$db->SetUserQuestion($_COOKIE['ID'], 0);
?>

<body>
    <?php require_once("header.php") ?>
    <main>
        <div class="d-flex flex-column py-5 py-sm-3 h-100 mx-3">
            <p class="text-center fw-bold fs-1">Fin du quiz</p>
            <div class="flex-fill d-flex flex-column justify-content-center">
                <div class="d-flex flex-column mb-4">
                    <p class="mb-0">Votre score : <b><?= $_SESSION['points']?>/6</b></p>
                    <p class="mb-0"><b><?= round($_SESSION['points'] / 6 * 100)?>%</b> de réussite</p>
                </div>
                <div class="d-flex flex-column mb-2">
                    <p class="mb-0">Questions maturité :</p>
                    <p class="mb-0"><b><?= $_SESSION['matu']?>/3</b></p>
                </div>
                <div class="d-flex flex-column">
                    <p class="mb-0">Questions de métier :</p>
                    <p class="mb-0"><b><?= $_SESSION['metier']?>/3</b></p>
                </div>
            </div>
        </div>
    </main>
    <?php require_once("footer.php") ?>
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