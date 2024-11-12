<?php
session_start();
require_once("database.php");

$ENV = parse_ini_file('.env');

$db = new db($ENV['USERNAME'], $ENV['PWD']);

function CreateUser($user, $date)
{
  global $db;
  $db->CreateUser($user, $date);
}

function UserExists($user, $date)
{
  global $db;
  $id = $db->GetUserID($user, $date);
  return !($id == null);
}

function GetResponseID($question, $texte)
{
  global $db;
  $db->GetRepID($question, $texte);
}

function CheckRep($idQuestion)
{
  global $db;
  $answ = $db->ReturnAnswers($idQuestion);
  foreach ($answ as $key => $a) {
    if ($a['bonne'] == 1) return $key;
  }
}

function GetRandomQuestions($poste, $type)
{
  global $db;
  $themes = [];
  if (!isset($_SESSION['diff'])) $_SESSION['diff'] = 1;

  if ($type == 0) {
    switch ($poste) {
      case 1:
        $themes = [2, 3];
        break;
      case 2:
        $themes = [4, 8];
        break;
      case 3:
        $themes = [1, 2];
        break;
      case 4:
        $themes = [6, 7];
        break;
      case 5:
        $themes = [3, 5];
        break;
    }

    $questions = array_merge($db->ReturnQuestions($type, $themes[0], $_SESSION['diff'] + 1), $db->ReturnQuestions($type, $themes[1], $_SESSION['diff'] + 1));
  } else {
    $questions = $db->ReturnQuestions($type, $poste, $_SESSION['diff'] + 1);
  }

  shuffle($questions);

  if (!isset($_SESSION['showed'])) $_SESSION['showed'] = [];
  foreach ($questions as $q) {
    if (!in_array($q['idquestions'], $_SESSION['showed'])) $_SESSION['question'] = $q;
  }
}

function GetResponses($idQuestion)
{
  global $db;
  return $db->ReturnAnswers($idQuestion);
}

function NextQuestion($idUser)
{
  global $db;
  $db->SetUserQuestion($idUser, $db->GetUserQuestion($idUser) + 1);
}

function GetUserID($username, $naiss)
{
  global $db;
  return $db->GetUserID($username, $naiss);
}

function ReturnPlayers() {
  global $db;
  return $db->ReturnTopsPlayers();
}