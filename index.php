<?php
require_once("controller.php");
$_SESSION['error'] = "<NE DOIT PAS APPARAITRE>";

//! Debug
if (isset($_GET['poste']) && $_GET['poste'] == 2008) {
  setcookie('ID', '', time() - 3600);
  session_destroy();
}

if (isset($_COOKIE['ID'])) {
  $_SESSION['points'] = 0;
  $_SESSION['matu'] = 0;
  $_SESSION['metier'] = 0;
  header('Location: question.php?poste=' . $_GET['poste']);
  exit();
}

if (isset($_POST['username']) && isset($_POST['naiss'])) {
  // $error = $_POST['username'] . " - " . $_POST['naiss'];

  // TODO : Ajouter vérification + affichage erreur
  if (!UserExists($_POST['username'], $_POST['naiss'])) {
    CreateUser($_POST['username'], $_POST['naiss']);
    setrawcookie('ID', GetUserID($_POST['username'], $_POST['naiss']), time() + 86400);
    header('Location: question.php?poste=' . $_GET['poste']);
    exit();
  } else {
    $_SESSION['error'] = "Nom d'utilisateur déjà existant";
  }
}
?>

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
  <script src="script.js"></script>
</head>

<body>
  <?php require_once("header.php") ?>
  <main>
    <form class="d-flex flex-column py-5 py-sm-3 h-100 mx-3" method="post">
      <h1 class="text-center" style="font-size: 40px;">Inscription</h1>
      <div class="flex-fill d-flex flex-column justify-content-center">
        <div class="d-flex flex-column w-75 mx-auto mb-3">
          <label for="username" class="fs-5">Nom d'utilisateur :</label>
          <input type="text" class="ps-3 rounded-2 py-2 border-0" name="username" id="username" maxlength="45" placeholder="Marc" required></input>
        </div>
        <div class="d-flex flex-column w-75 mx-auto">
          <label for="naiss" class="fs-5">Date de naissance :</label>
          <input type="date" class="ps-3 rounded-2 py-2 border-0" name="naiss" id="naiss" required></input>
        </div>
      </div>
      <div class="mt-auto mx-auto text-center">
        <p class="text-danger <?= $_SESSION['error'] == "<NE DOIT PAS APPARAITRE>" ? "invisible" : "" ?>"><?= htmlspecialchars($_SESSION['error']); ?></p>
        <button type="submit" class="rounded border-0 text-light px-3 py-2 mx-auto" style="background-color: #53C5FB; font-size: 20px;">Confirmer</button>
      </div>
    </form>
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