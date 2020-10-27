<?php
include 'config/init.php';
if(isset($_SESSION['confirm']))
{
    include 'templates/sh-all-history.php';
}
else
{
include 'templates/frontpage.php';
}