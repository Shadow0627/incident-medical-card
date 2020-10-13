<header class="inci-header">
    <img src="/public/ico/favicon.svg" class="inci-logo">
    <ul>
        <li><a href="#myacc">Zalogowano jako: <?php echo $_SESSION['Name'] ." ". $_SESSION['Lastname'];?></a></li>
        <li><a href="#add">Nowe zdarzenie</a></li>
        <li><a href="#hist">Historia</a></li>
        <li><a href="#medi">Leki</a></li>
        <li><a href="#trauma">Urazy</a></li>
        <li><a href="#logout">Wyloguj</a></li>
    </ul>
</header>
<div id="add" >
    <form method="post" class="inci-add">
<?php include 'templates/add-pati.php'; ?>
<?php include 'templates/add-exit.php'; ?>
<?php include 'templates/add-sample.php';?>
<?php include 'templates/add-trauma.php';?>
<?php include 'templates/add-notes.php'; ?>
<input  class="save-all-bt" type="submit" value="Wyślij do bazy!" name="end-form-add-inci"></form>
</div>
<div class="inci-hist" id="hist"></div>
<div class="inci-medi" id="medi"></div>
<div class="inci-trauma" id="truma"></div>
<div id="logout" class="inci-logout">
    <form method="post">
        <input type="submit" value="Wyloguj" name="logout">
    </form>
</div>




<?php
$medi = array();
$exco = array();
$loti = array();
$tdon = array();
$toin = array();
$toca = array();
$pati = array();
$regl = array();
$trau = array();
$sale = array();
$uote = array();
$toni = array();
if(isset($_POST['logout']))
{
    $user->logout();
}