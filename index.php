<?php
include 'config/init.php';
if(isset($_SESSION['confirm']))
{
    header('location: addinci.php');
}
else
{
include 'templates/frontpage.php';
}