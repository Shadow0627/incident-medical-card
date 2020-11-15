<?php
include 'config/init.php';
if(isset($_SESSION['userId']) && $_SESSION['confirm'] == 'start')
{
    include 'templates/head.php';
    include 'templates/inci.php';
    include 'templates/footer.php';
    include 'helpers/ip.php';
}
else
{
    $_SESSION['error'] = "brak danych logowania";
    header('Location: index.php');
}

