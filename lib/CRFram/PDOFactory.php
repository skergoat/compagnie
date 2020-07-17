<?php
namespace CRFram;

class PDOFactory
{
  public static function getMysqlConnexion()
  {
    $db = new \PDO('mysql:host=localhost:8888;dbname=compagnie;charset=utf8', 'root', 'root');
    $db->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
    
    return $db;
  }
}