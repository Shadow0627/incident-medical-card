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
<div id="logout" class="inci-logout">
    <form method="post">
        <input type="submit" value="Wyloguj" name="logout">
    </form>
</div>




<?php
if(isset($_POST['logout']))
{
    $user->logout();
}