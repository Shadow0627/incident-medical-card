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
        $id_exco = uniqid($prefix);
        $sql = 'INSERT INTO exco (IDEX, NUEX) VALUES (:idex, :nuex)';
        $this->db->query($sql);
        $this->db->bind(':idex', $id_exco);
        $this->db->bind(':nuex', $exco['number']);
        $this->db->execute();
        $prefix = "glcs";
        $id_glcs = uniqid($prefix);
        $sql = 'INSERT INTO glcs (IDGL, EYGL, VOGL, MOGL) VALUES (:idgl, :e, :v, :m)';
        $this->db->query($sql);
        $this->db->bind(':idgl', $id_glcs);
        $this->db->bind(':e', $glcs['eye']);
        $this->db->bind(':v', $glcs['voice']);
        $this->db->bind(':m', $glcs['move']);
        $this->db->execute();
        $prefix = "loti";
        $id_loti = uniqid($prefix);
        $sql='INSERT INTO loti(IDLO, CILO, ZCLO, STLO) VALUES (:idlo, :cilo, :zclo, :stlo)';
        $this->db->query($sql);
        $this->db->bind(':idlo', $id_loti);
        $this->db->bind(':cilo', $loti['cilo']);
        $this->db->bind(':zclo', $loti['zclo']);
        $this->db->bind(':stlo', $loti['stlo']);
        $this->db->execute();
        $prefix = "medi";
        $id_medi = uniqid($prefix);
        $sql = 'INSERT INTO medi(IDME, MENA) VALUES (:idme, :mena)';
        $this->db->query($sql);
        $this->db->bind(':idme', $id_medi);
        $this->db->bind(':mena', $medi['nami']);
        $this->db->execute();
        $prefix = "note";
        $id_note = uniqid($prefix);
        $sql = 'INSERT INTO note(IDNO, CONO) VALUES (:idno, :cono)';
        $this->db->query($sql);
        $this->db->bind(':idno', $id_note);
        $this->db->bind(':cono', $note['cono']);
        $this->db->execute();
        $prefix = "pati";
        $id_pati = uniqid($prefix);
        $sql = 'INSERT INTO pati(IDPA, NAPA, LAPA, PNPA, EMPA, CIPA, ZCPA, SNPA) VALUES (:idpa, :napa, :lapa, :pnpa, :empa, :cipa, :zcpa, :snpa)';
        $this->db->query($sql);
        $this->db->bind(':idpa', $id_pati);
        $this->db->bind(':napa', $pati['napa']);
        $this->db->bind(':lapa', $pati['lapa']);
        $this->db->bind(':pnpa', $pati['pnpa']);
        $this->db->bind(':empa', $pati['empa']);
        $this->db->bind(':cipa', $pati['cipa']);
        $this->db->bind(':zcpa', $pati['zcpa']);
        $this->db->bind(':snpa', $pati['snpa']);
        $this->db->execute();
        $prefix = "sale";
        $id_sale = uniqid($prefix);
        $sql = 'INSERT INTO sale(IDSA, SYSA, ALSA, MESA, PASA, LASA, EVSA) VALUES (:idsa, :s, :a, :m, :p, :l, :e)';
        $this->db->query($sql);
        $this->db->bind(':idsa', $id_sale);
        $this->db->bind(':s', $sale['s']);
        $this->db->bind(':a', $sale['a']);
        $this->db->bind(':m', $sale['m']);
        $this->db->bind(':p', $sale['p']);
        $this->db->bind(':l', $sale['l']);
        $this->db->bind(':e', $sale['e']);
        $this->db->execute();
        $prefix = "tdon";
        $id_tdon = uniqid($prefix);
        $sql = 'INSERT INTO tdon(IDTD, DDTD, ARTD, BBTD) VALUES(:idtd, :ddtd, :artd, :bbtd)';
        $this->db->query($sql);
        $this->db->bind(':idtd', $id_tdon);
        $this->db->bind(':ddtd', $tdon['ddtd']);
        $this->db->bind(':artd', $tdon['artd']);
        $this->db->bind(':bbtd', $tdon['bbtd']);
        $this->db->execute();
        $prefix = "toca";
        $id_toca = uniqid($prefix);
        $sql = 'INSERT INTO toca(IDTO, NATO) VALUES(:idto, :nato)';
        $this->db->query($sql);
        $this->db->bind(':idto', $id_toca);
        $this->db->bind(':nato', $toca['nato']);
        $this->db->execute();
        $prefix = "toni";
        $id_toni = uniqid($prefix);
        $sql = 'INSERT INTO toin(IDTO, NATO) VALUES (:idto, :tono)';
        $this->db->query($sql);
        $this->db->bind(':idto', $id_toni);
        $this->db->bind(':tono', $toin['tona']);
        $this->db->execute();
        $prefix = "trau";
        $id_trau = uniqid($prefix);
        $sql = 'INSERT INTO trau(IDTR, NATR) VALUES(:idtr, :natr)';
        $this->db->query($sql);
        $this->db->bind(':idtr', $id_trau);
        $this->db->bind(':natr', $trau['natr']);
        $this->db->execute();
        $prefix = "uote";
        $id_uote = uniqid($prefix);
        $sql= 'INSERT INTO uote(IDUO, NAUO) VALUES(:idou, :nauo)';
        $this->db->query($sql);
        $this->db->bind(':idou', $id_uote);
        $this->db->bind(':nauo', $uote['nauo']);
        $this->db->execute();
        $sql = 'INSERT INTO inci(IDIN, IDUS, IDPA, IDTR, IDTD, IDLO, IDNO, IDTO, IDUO, IDTI, IDEX, IDSA, IDGL, IDME) VALUES(:idin, :idms, :idpa, :idtr, :idtd, :idlo, :idno, :idto, :iduo, :idti, :idex, :idsa, :idgl, :idme)';
        $this->db->query($sql);
        $prefix = 'inci';
        $id_inci=uniqid($prefix);
        $this->db->bind(':idin', $id_inci);
        $this->db->bind(":idex", $id_exco);
        $this->db->bind(":idgl", $id_glcs);
        $this->db->bind(":idlo", $id_loti);
        $this->db->bind(":idme", $id_medi);
        $this->db->bind(":idno", $id_note);
        $this->db->bind(":idpa", $id_pati);
        $this->db->bind(":idsa", $id_sale);
        $this->db->bind(":idtd", $id_tdon);
        $this->db->bind(":idto", $id_toca);
        $this->db->bind(":idti", $id_toni);
        $this->db->bind(":idtr", $id_trau);
        $this->db->bind(":iduo", $id_uote);
        $id = $_SESSION['userId'];
        $this->db->bind(":idms", $id);
        $this->db->execute();
        $_SESSION['error'] = "Zdarzenie dodane do bazy pomyślnie !!";
    }
    public function get()
    {
                   $sql = 'SELECT IDIN, LAPA, DDTD, BBTD, CILO FROM inci, pati, tdon, loti WHERE inci.IDPA = pati.IDPA AND inci.IDTD = tdon.IDTD AND inci.IDLO = loti.IDLO LIMIT 5';
                   $this->db->query($sql);
                   $results = $this->db->getresult();
                   foreach($results as $row)
                   {
                    print('Nazwisko pacjenta: '. $row['LAPA'] .'<br>');
                    print('Czas wyjazdu/powrotu: '. $row['DDTD']. '/'. $row['BBTD'] .'<br>');
                    print('Miejscowość: '. $row['CILO'] .'<br>');
                   }
    }
}