<?php
if(isset($_SESSION['userId']) && $_SESSION['confirm'] == 'start')
{
    include 'config/init.php';
}
else
{
    $_SESSION['error'] = "brak danych logowania";
    header('Location: index.php');
}

