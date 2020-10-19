<?php
class Inci
{
    protected $db;
    public function __construct() {
        $this -> db = new Database;
    }
    function add($exco, $glcs, $loti, $medi, $note, $pati, $sale, $tdon, $toca, $toin, $trau, $uote)
    {
        $prefix = "exco";
        $id = uniqid($prefix);
        $sql = 'INSERT INTO exco (IDEX, NUEX) VALUES (:idex, :nuex)';
        $this->db->query($sql);
        $this->db->bind(':idex', $id);
        $this->db->bind(':nuex', $exco['number']);
        $this->db->execute();
        $prefix = "glcs";
        $id = uniqid($prefix);
        $sql = 'INSERT INTO glcs (IDGL, EYGL, VOGL, MOGL) VALUES (:idgl, :e, :v, :m)';
        $this->db->query($sql);
        $this->db->bind(':idgl', $id);
        $this->db->bind(':e', $glcs['eye']);
        $this->db->bind(':v', $glcs['voice']);
        $this->db->bind(':m', $glcs['move']);
        $this->db->execute();
        $prefix = "loti";
        $id = uniqid($prefix);
        $sql='INSERT INTO loti(IDLO, CILO, ZCLO, STLO) VALUES (:idlo, :cilo, :zclo, :stlo)';
        $this->db->query($sql);
        $this->db->bind(':idlo', $id);
        $this->db->bind(':cilo', $loti['cilo']);
        $this->db->bind(':zclo', $loti['zclo']);
        $this->db->bind(':stlo', $loti['stlo']);
        $this->db->execute();
        $prefix = "medi";
        $id = uniqid($prefix);
        $sql = 'INSERT INTO medi(IDME, MENA) VALUES (:idme, :mena)';
        $this->db->query($sql);
        $this->db->bind(':idme', $id);
        $this->db->bind(':mena', $medi['nami']);
        $this->db->execute();
        $prefix = "note";
        $id = uniqid($prefix);
        $sql = 'INSERT INTO note(IDNO, CONO) VALUES (:idno, :cono)';
        $this->db->query($sql);
        $this->db->bind(':idno', $id);
        $this->db->bind(':cono', $note['cono']);
        $this->db->execute();
        $prefix = "pati";
        $id = uniqid($prefix);
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
        $prefix = "sale";
        $id = uniqid($prefix);
        $sql = 'INSERT INTO sale(IDSA, SYSA, ALSA, MESA, PASA, LASA, EVSA) VALUES (:idsa, :s, :a, :m, :p, :l, :e)';
        $this->db->query($sql);
        $this->db->bind(':idsa', $id);
        $this->db->bind(':s', $sale['s']);
        $this->db->bind(':a', $sale['a']);
        $this->db->bind(':m', $sale['m']);
        $this->db->bind(':p', $sale['p']);
        $this->db->bind(':l', $sale['l']);
        $this->db->bind(':e', $sale['e']);
        $this->db->execute();
        $prefix = "tdon";
        $id = uniqid($prefix);
        $sql = 'INSERT INTO tdon(IDTD, DDTD, ARTD, BBTD) VALUES(:idtd, :ddtd, :artd, :bbtd)';
        $this->db->query($sql);
        $this->db->bind(':idtd', $id);
        $this->db->bind(':ddtd', $tdon['ddtd']);
        $this->db->bind(':artd', $tdon['artd']);
        $this->db->bind(':bbtd', $tdon['bbtd']);
        $this->db->execute();
        $prefix = "toca";
        $id = uniqid($prefix);
        $sql = 'INSERT INTO toca(IDTO, NATO) VALUES(:idto, :nato)';
        $this->db->query($sql);
        $this->db->bind(':idto', $id);
        $this->db->bind(':nato', $toca['nato']);
        $this->db->execute();
        $prefix = "toni";
        $id = uniqid($prefix);
        $sql = 'INSERT INTO toin(IDTO, NATO) VALUES (:idto, :tono)';
        $this->db->query($sql);
        $this->db->bind(':idto', $id);
        $this->db->bind(':tono', $toin['tona']);
        $this->db->execute();
        $prefix = "trau";
        $id = uniqid($prefix);
        $sql = 'INSERT INTO trau(IDTR, NATR) VALUES(:idtr, :natr)';
        $this->db->query($sql);
        $this->db->bind(':idtr', $id);
        $this->db->bind(':natr', $trau['natr']);
        $this->db->execute();
        $prefix = "uote";
        $id = uniqid($prefix);
        $sql= 'INSERT INTO uote(IDUO, NAUO) VALUES(:idou, :nauo)';
        $this->db->query($sql);
        $this->db->bind(':idou', $id);
        $this->db->bind(':nauo', $uote['nauo']);
        $this->db->execute();
        $sql = 'INSERT INTO inci(IDMS, IDPA, IDTR, IDTD, IDLO, IDNO, IDTO, IDUO, IDTI, IDEX, IDSA, IDGL, IDME) VALUES(:idms, :idpa, :idtr, :idtd, :idlo, :idno, :idto, :iduo, :idti, :idex, :idsa, :idgl, :idme)';
        $this->db->query($sql);
        $prefix = "exco";
        $id = uniqid($prefix);
        $this->db->bind(":idex", $id);
$prefix = "glcs";
        $id = uniqid($prefix);
        $this->db->bind(":idgl", $id);
$prefix = "loti";
        $id = uniqid($prefix);
        $this->db->bind(":idlo", $id);
$prefix = "medi";
        $id = uniqid($prefix);
        $this->db->bind(":idme", $id);
$prefix = "note";
        $id = uniqid($prefix);
        $this->db->bind(":idno", $id);
$prefix = "pati";
        $id = uniqid($prefix);
        $this->db->bind(":idpa", $id);
$prefix = "sale";
        $id = uniqid($prefix);
        $this->db->bind(":idsa", $id);
$prefix = "tdon";
        $id = uniqid($prefix);
        $this->db->bind(":idtd", $id);
$prefix = "toca";
        $id = uniqid($prefix);
        $this->db->bind(":idto", $id);
$prefix = "toni";
        $id = uniqid($prefix);
        $this->db->bind(":idti", $id);
$prefix = "trau";
        $id = uniqid($prefix);
        $this->db->bind(":idtr", $id);
$prefix = "uote";
        $id = uniqid($prefix);
        $this->db->bind(":iduo", $id);
        $id = $_SESSION['userId'];
        $this->db->bind(":idms", $id);
        $this->db->execute();
    }
    
}