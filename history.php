<?php
include 'config/init.php';
if(isset($_SESSION['confirm']))
{
    include 'templates/head.php';
    include 'templates/sh-all-history.php';
    include 'templates/footer.php';
}
else
{
include 'templates/frontpage.php';
}