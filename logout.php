<?php 
include 'config/init.php';
if(isset($_POST['logout']))
{
    $user->logout();
}?>