<?php

if(isset($_POST['exit']))
{
    $_SESSION['exco'] = trim($_POST['exco']);
    $_SESSION['cilo'] = trim($_POST['cilo']);
    $_SESSION['zclo'] = trim($_POST['zclo']);
    $_SESSION['stlo'] = trim($_POST['stlo']);
    $_SESSION['ddtd'] = trim($_POST['ddtd']);
    $_SESSION['artd'] = trim($_POST['artd']);
    $_SESSION['bbtd'] = trim($_POST['bbtd']);
    $_SESSION['nato'] = trim($_POST['nato']);
    $_SESSION['tona'] = trim($_POST['tona']);
    $_SESSION['nauo'] = trim($_POST['nauo']);
    $exco = array();
    $exco['number'] = $_SESSION['exco'];
    $loti = array();
    $loti['cilo'] = $_SESSION['cilo'];
    $loti['zclo'] = $_SESSION['zclo'];
    $loti['stlo'] = $_SESSION['stlo'];
    $tdon = array();
    $tdon['ddtd'] = $_SESSION['ddtd'];
    $tdon['artd'] = $_SESSION['artd'];
    $tdon['bbtd'] = $_SESSION['bbtd'];
    $toca = array();
    $toca['nato'] = $_SESSION['nato'];
    $toin = array();
    $toin['tona'] = $_SESSION['tona'];
    $uote = array();
    $uote['nauo'] = $_SESSION['nauo'];
    print_r($uote, $toni, $toca, $tdon, $loti, $exco);

}
if(isset($_POST['Note']))
{
    $_SESSION['cono'] = trim($_POST['cono']);
    $note = array();
    $note['cono'] = $_SESSION['cono'];
    print_r($note);

}
if(isset($_POST['pati']))
{
    $_SESSION['napa'] = trim($_POST['napa']);
    $_SESSION['lapa'] = trim($_POST['lapa']);
    $_SESSION['pnpa'] = trim($_POST['pnpa']);
    $_SESSION['empa'] = trim($_POST['empa']);
    $_SESSION['cipa'] = trim($_POST['cipa']);
    $_SESSION['zcpa'] = trim($_POST['zcpa']);
    $_SESSION['snpa'] = trim($_POST['snpa']);
    $pati = array();
    $pati['napa']= $_SESSION['napa'];
    $pati['lapa'] = $_SESSION['lapa'];
    $pati['pnpa'] = $_SESSION['pnpa'];
    $pati['empa'] = $_SESSION['empa'];
    $pati['cipa'] = $_SESSION['cipa'];
    $pati['zcpa'] = $_SESSION['zcpa'];
    $pati['snpa'] = $_SESSION['snpa'];
    print_r($pati);
}
if(isset($_POST['sample']))
{
    $_SESSION['s'] = trim($_POST['s']);
    $_SESSION['a'] = trim($_POST['a']);
    $_SESSION['m'] = trim($_POST['m']);
    $_SESSION['p'] = trim($_POST['p']);
    $_SESSION['l'] = trim($_POST['l']);
    $_SESSION['e'] = trim($_POST['e']);
    $_SESSION['eye'] = trim($_POST['eye']);
    $_SESSION['voice'] = trim($_POST['voice']);
    $_SESSION['move'] = trim($_POST['move']);
    $regl = array();
    $regl['eye'] = $_SESSION['eye'];
    $regl['voice'] = $_SESSION['voice'];
    $regl['move'] = $_SESSION['move'];
    $sale = array();
    $sale['s'] = $_SESSION['s'];
    $sale['a'] = $_SESSION['a'];
    $sale['m'] = $_SESSION['m'];
    $sale['p'] = $_SESSION['p'];
    $sale['l'] = $_SESSION['l'];
    $sale['e'] = $_SESSION['e'];
    print_r($sale, $regl);
}
if(isset($_POST['trauma']))
{
    $_SESSION['natr'] = trim($_POST['natr']);
    $_SESSION['nami'] = trim($_POST['nami']);
    $medi = array();
    $medi['nami'] = $_SESSION['nami'];
    $trau = array();
    $trau['natr'] = $_SESSION['natr'];
   print_r($trau, $medi);
}
if(isset($_POST['end-form-add-inci']))
{
         $inci->add($exco, $regl, $loti, $medi, $note, $pati, $sale, $tdon, $toca, $toin, $trau, $uote);

}
else
{
    echo 'dupa z postem';   
}