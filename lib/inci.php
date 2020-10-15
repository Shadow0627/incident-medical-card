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
        $this->db->bind(':deme', $medi['deme']);
        $this->db->execute();
        $sql = 'INSERT INTO note(IDNO, CONO) VALUES (:idno, :cono)';
        $this->db->query($sql);
        $this->db->bind(':idno', $id);
        $this->db->bind(':cono', $note['cono']);
        $this->db->execute();
        $sql = 'INSERT INTO pati(IDPA, NAPA, LAPA, PNPA, EMPA, CIPA, ZCPA, SNPA) VALUES (:idpa, :napa, :lapa, :pnpa, :empa, :cipa, :zcpa, :snpa)';
        $this->db->query($sql);
        $this->db->bind(':idpa', $id);
        $this->db->bind(':napa', $pati['napa']);
        $this->db->bind(':lapa', $pati['lapa']);
        $this->db->bind(':pnpa', $pati['pnpa']);
        $this->db->bind(':empa', $pati['empa']);
        $this->db->bind(':cipa', $pati['cipa']);
        $this->db->bind(':zcpa', $pati['zcpa']);
        $this->db->bind(':snpa', $pati['snpa']);
        $this->db->execute();
        $sql = 'INSERT INTO sale(IDSA, RESA) VALUES (:idsa, :resa)';
        $this->db->query($sql);
        $this->db->bind(':idsa', $id);
        $this->db->bind(':resa', $sale);
        $this->db->execute();
        $sql = 'INSERT INTO tdon(IDTD, DDTD, ARTD, BBTD) VALUES(:idtd, :ddtd, :artd, :bbtd)';
        $this->db->query($sql);
        $this->db->bind(':idtd', $id);
        $this->db->bind(':ddtd', $tdon['ddtd']);
        $this->db->bind(':artd', $tdon['artd']);
        $this->db->bind(':bbtd', $tdon['bbtd']);
        $this->db->execute();
        $sql = 'INSERT INTO toca(IDTO, NATO) VALUES(:idto, :nato)';
        $this->db->query($sql);
        $this->db->bind(':idto', $id);
        $this->db->bind(':nato', $toca['nato']);
        $this->db->execute();
        $sql = 'INSERT INTO toni(IDTO, TONO) VALUES (:idto, :tono)';
        $this->db->query($sql);
        $this->db->bind(':idto', $id);
        $this->db->bind(':tono', $toin['tono']);
        $this->db->execute();
        $sql = 'INSERT INTO trau(IDTR, NATR) VALUES(:idtr, :natr)';
        $this->db->query($sql);
        $this->db->bind(':idtr', $id);
        $this->db->bind(':natr', $trau['natr']);
        $this->db->execute();
        $sql= 'INSERT INTO uote(IDOU, NAUO) VALUES(:idou, :nauo)';
        $this->db->query($sql);
        $this->db->bind(':idou', $id);
        $this->db->bind(':nauo', $uote['nauo']);
        $this->db->execute();
        $sql = 'INSERT INTO inci(IDMS, IDPA, IDTR, IDTD, IDLO, IDNO, IDTO, IDUO, IDTI, IDEX, IDSA, IDGL, IDME) VALUES(:idms, :idpa, :idtr, :idtd, :idlo, :idno, :idto, :iduo, :idti, :idex, :idsa, :idgl, :idme)';
        $this->db->query($sql);
        $this->db->bind(":idms", $id);
        $this->db->bind(":idpa", $id);
        $this->db->bind(":idtr", $id);
        $this->db->bind(":idtd", $id);
        $this->db->bind(":idlo", $id);
        $this->db->bind(":idno", $id);
        $this->db->bind(":idto", $id);
        $this->db->bind(":iduo", $id);
        $this->db->bind(":idti", $id);
        $this->db->bind(":idex", $id);
        $this->db->bind(":idsa", $id);
        $this->db->bind(":idgl", $id);
        $this->db->bind(":idme", $id);
        $this->db->execute();



    }
    
}