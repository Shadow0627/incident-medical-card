<?php
class User
{
    protected $db;
    public function __construct() {
        $this -> db = new Database;
    }
    
    public function loginuser($dane)
    {
        $sql = 'SELECT * FROM user, mest WHERE user.paus = :pass AND user.lous = :name ';
        $this -> db->query($sql);
        $passha1 = sha1($dane['pass']);
        $this -> db -> bind(':pass', $passha1);
        $trimname = trim($dane['login']);
        $this -> db -> bind(':name', $trimname);
        $results = $this -> db -> resultSet();
        $numRows = $this -> db -> rowCount();
        if($numRows == 1) {
            foreach($results as $row) {
                $_SESSION['userId'] = $row -> IDUS;
                $_SESSION['Name'] = $row ->NAME;
                $_SESSION['Lastname'] = $row->LAME;
                $_SESSION['confirm'] = 'start';
            }
            return true;
        } else {
            return false;
        }
    }
}