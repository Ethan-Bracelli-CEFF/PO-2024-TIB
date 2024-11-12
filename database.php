<?php

class db
{
  public $db;

  function __construct($user, $pwd)
  {
    $this->db = new PDO('mysql:host=localhost;dbname=tib', $user, $pwd);
  }

  function CreateUser(string $username, string $naissance)
  {
    $stmt = $this->db->prepare("INSERT INTO `user` (nom, date_naissance) VALUES (?, ?)");
    $stmt->bindParam(1, $username);
    $stmt->bindParam(2, $naissance);
    $stmt->execute();
  }

  function GetUserID(string $username, string $naissance)
  {
    $stmt = $this->db->prepare("SELECT `iduser` FROM `user` WHERE `nom` = ? AND `date_naissance` = ?");
    $stmt->bindParam(1, $username);
    $stmt->bindParam(2, $naissance);
    $stmt->execute();

    $result = $stmt->fetch();

    if ($result != false) {
      return $result['iduser'];
    } else {
      return $result;
    }
  }

  function ReturnPlayer(int $idPlayer)
  {
    $stmt = $this->db->prepare("SELECT * FROM `user` WHERE `iduser` = :id");
    $stmt->bindParam(':id', $idPlayer);
    $stmt->execute();
    return $stmt->fetch();
  }

  function UpdatePoints(int $idUser, int $points)
  {
    $stmt = $this->db->prepare("UPDATE `user` SET `points` = :points WHERE `idUser` = :user");
    $stmt->bindParam(":user", $idUser);
    $stmt->bindParam(":points", $points);
    $stmt->execute();
  }

  function GetRepID(int $question, string $texte)
  {
    $stmt = $this->db->prepare("SELECT `idreponses` FROM `reponses` WHERE `questions_idquestions` = :question AND `texte` = :texte");
    $stmt->bindParam(":question", $question, PDO::PARAM_STR);
    $stmt->bindParam(":texte", $texte, PDO::PARAM_STR);
    $stmt->execute();

    return $stmt->fetch();
  }

  function ReturnQuestions(int $type, int $theme, int $difficulty)
  {
    $stmt = $this->db->prepare("SELECT * FROM `questions` WHERE `type` = :type AND `theme` = :theme AND `diff` = :difficulty");
    $stmt->bindParam(":type", $type, PDO::PARAM_INT);
    $stmt->bindParam(":theme", $theme, PDO::PARAM_INT);
    $stmt->bindParam(":difficulty", $difficulty, PDO::PARAM_INT);
    $stmt->execute();
    return $stmt->fetchAll();
  }

  function ReturnAnswers(int $idQuestion)
  {
    $stmt = $this->db->prepare("SELECT * FROM `reponses` WHERE `questions_idquestions` = :id");
    $stmt->bindParam(":id", $idQuestion, PDO::PARAM_INT);
    $stmt->execute();
    return $stmt->fetchAll();
  }

  function GetUserQuestion(int $idUser)
  {
    $stmt = $this->db->prepare("SELECT `question` FROM `user` WHERE `iduser` = :id");
    $stmt->bindParam(":id", $idUser, PDO::PARAM_INT);
    $stmt->execute();
    return $stmt->fetch()['question'];
  }

  function SetUserQuestion(int $idUser, int $question)
  {
    $stmt = $this->db->prepare("UPDATE `user` SET `question` = :question WHERE `iduser` = :id");
    $stmt->bindParam(":id", $idUser, PDO::PARAM_INT);
    $stmt->bindParam(":question", $question, PDO::PARAM_INT);
    $stmt->execute();
  }

  function GetUserPoints(int $idUser)
  {
    $stmt = $this->db->prepare("SELECT `points` FROM `user` WHERE `iduser` = :id");
    $stmt->bindParam(":id", $idUser, PDO::PARAM_INT);
    $stmt->execute();
    return $stmt->fetch()['points'];
  }

  function SetUserPoints(int $idUser, int $value)
  {
    $stmt = $this->db->prepare("UPDATE `user` SET `points` = :value WHERE `iduser` = :id");
    $stmt->bindParam(":id", $idUser, PDO::PARAM_INT);
    $stmt->bindParam(":value", $value, PDO::PARAM_INT);
    $stmt->execute();
  }

  function ReturnTopsPlayers()
  {
    return $this->db->query("SELECT * FROM `user` ORDER BY `points`, `date_naissance` LIMIT 5")->fetchAll();
  }
}
