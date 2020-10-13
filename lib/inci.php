<?php
class Inci
{
    protected $db;
    public function __construct() {
        $this -> db = new Database;
    }
    function add($exco, $glcs, $loti, $medi, $note, $pati, $sale, $tdon, $toca, $toin, $trau, $uote)
    {
        print_r($exco);
        print_r($glcs);
        print_r($loti);
        print_r($medi);
        print_r($note);
        print_r($pati);
        print_r($sale);
        print_r($tdon);
        print_r($toca);
        print_r($toin);
        print_r($trau);
        print_r($uote);
        $prefix = time();
        $id = uniqid($prefix);
        $sql = 'INSERT INTO exco (IDEX, NUEX) VALUES (:idex, :nuex)';
        $this->db->query($sql);
        $this->db->bind(':idex', $id);
        $this->db->bind(':nuex', $exco['number']);
        $this->db->execute();
        $sql = 'INSERT INTO glcs (IDGL, REGL) VALUES (:idgl, :regl)';
        $this->db->query($sql);
        $this->db->bind(':idgl', $id);
        $this->db->bind(':regl', $glcs);
        $this->db->execute();
        $sql='INSERT INTO loti(IDLO, CILO, ZCLO, STLO) VALUES (:idlo, :cilo, :zclo, :stlo)';
        $this->db->query($sql);
        $this->db->bind(':idlo', $id);
        $this->db->bind(':cilo', $loti['cilo']);
        $this->db->bind(':zclo', $loti['zclo']);
        $this->db->bind(':stlo', $loti['stlo']);
        $this->db->execute();
        $sql = 'INSERT INTO medi(IDME, NAME, DEME) VALUES (:idme, :name, :deme)';
        $this->db->query($sql);
        $this->db->bind(':idme', $id);
        $this->db->bind(':name', $medi['name']);

    }
    
}