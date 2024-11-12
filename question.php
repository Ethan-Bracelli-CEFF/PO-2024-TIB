<!doctype html>
<html lang="en">

<head>
  <title>Title</title>
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

<?php
require_once('controller.php');
$_SESSION['answer'] = 0;

//! Debug
if (isset($_GET['poste']) && $_GET['poste'] == 2008) {
  session_destroy();
  header("Location: question.php?poste=1");
  exit();
}

if ($db->GetUserQuestion($_COOKIE['ID']) >= 6) {
  header('Location: resultats.php');
  exit();
}

if (isset($_POST['rep'])) {
  $_SESSION['showed'][] += $_SESSION['question']['idquestions'];

  $rep = CheckRep($_SESSION['question']['idquestions']) + 1;
  if ($rep == $_POST['rep']) {
    $db->SetUserPoints($_COOKIE['ID'], $db->GetUserPoints($_COOKIE['ID']) + 1);
    if (!isset($_SESSION['points'])) $_SESSION['points'] = 0;
    $db->GetUserQuestion($_COOKIE['ID']) < 3 ? $_SESSION['matu'] += 1 : $_SESSION['metier'] += 1;
    $_SESSION['points'] += 1;
    $_SESSION['diff'] += 1;
  } else {
    $_SESSION['diff'] -= 1;
  }

  if ($_SESSION['diff'] > 2) $_SESSION['diff'] = 2;
  if ($_SESSION['diff'] < 0) $_SESSION['diff'] = 0;

  NextQuestion($_COOKIE['ID']);
  header('Location:' . $_SERVER['PHP_SELF'] . '?poste=' . $_GET['poste']);
}

if (!isset($_GET['poste']) || ($_GET['poste'] < 1 || $_GET['poste'] > 5)) {
  header('Location: 404.php');
  exit();
} else {
  if ($db->GetUserQuestion($_COOKIE['ID']) == 3) $_SESSION['diff'] = 1;
  $db->GetUserQuestion($_COOKIE['ID']) < 3 ? GetRandomQuestions($_GET['poste'], 0) : GetRandomQuestions($_GET['poste'], 1);
}

$question = $db->GetUserQuestion($_COOKIE['ID']);
$reps = GetResponses($_SESSION['question']['idquestions']);

?>

<body onload="init();">
  <?php require_once("header.php"); ?>
  <main>
    <form class="d-flex flex-column py-5 py-sm-3 h-100 mx-3" method="post">
      <h1 class="text-center fs-1"><?= $_SESSION['question']['texte'] ?></h1>
      <div class="d-flex flex-column h-100 justify-content-center">
        <button type="button" class="rounded border-0 py-2 mb-2 rep" value="1"><?= $reps[0]['texte'] ?></button>
        <button type="button" class="rounded border-0 py-2 mb-2 rep" value="2"><?= $reps[1]['texte'] ?></button>
        <button type="button" class="rounded border-0 py-2 mb-2 rep" value="3"><?= $reps[2]['texte'] ?></button>
        <button type="button" class="rounded border-0 py-2 mb-2 rep" value="4"><?= $reps[3]['texte'] ?></button>
      </div>
      <button type="submit" class="btn btn-info w-50 mx-auto text-light disabled answ" name='rep' id='rep'>Confirmer</button>
    </form>
  </main>
  <?php require_once("footer.php"); ?>
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