<?php
include 'config.php';
session_start();

function __autoload($class_name)
{
    require_once 'lib/'.$class_name. '.php';
}

$user = new User;
$inci = new Inci;