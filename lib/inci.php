<?php
class Inci
{
    protected $db;
    public function __construct() {
        $this -> db = new Database;
    }
    function add($exco, $glcs, $loti, $medi, $note, $pati, $sale, $tdon, $toca, $toin, $trau, $uote)
    {
        print_r(
            $exco, $glcs, $loti, $medi, $note, $pati, $sale, $tdon, $toca, $toin, $trau, $uote
        );
    }
    
}