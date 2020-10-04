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

}
if(isset($_POST['Note']))
{
    $_SESSION['cono'] = trim($_POST['cono']);
    $note = array();
    $note['cono'] = $_SESSION['cono'];

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
}
if(isset($_POST['trauma']))
{
  
    $_SESSION['natr'] = trim($_POST['natr']);
    $_SESSION['nami'] = trim($_POST['nami']);
    $medi = array();
    $medi['nami'] = $_SESSION['nami'];
   
}
if(isset($_POST['end-form-add-inci']))
{
    if(isset($exco) && isset($regl) && isset($loti) && isset($medi) && isset($note))
    {
    }
}