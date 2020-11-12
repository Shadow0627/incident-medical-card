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
                $_SESSION['error'] = "Zalogowano!";
            }
            return true;
        } else {
            $_SESSION['error'] = "Błędne hasło lub login.";
            return false;
        }
    }
    public function logout()
    {
        session_unset();
        session_destroy();
        $_SESSION['error'] = 'Wylogowano!';
        header('location: index.php');
        
    }
    public function ip($ip)
    {
        $query ='UPDATE USER
        SET IPUS= :ip
        WHERE IDUS = :id ';
        $this->db->query($query);
        $this->db->bind(':ip', $ip);
        $this->db->bind(':id', $_SESSION['userId']);
        $this->db->execute();
    }
}