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
<div id="add" class="inci-add">
    <form method="post">
        <h1>Dane pacjenta</h1>
        <label for="napa">Imię pacjenta:</label>
        <input type="text" name="napa" id="napa" required>
        <label for="lapa">Nazwisko pacjenta:</label>
        <input type="text" name="lapa" id="lapa" require>
        <label for="pnpa">Numer telefonu:</label>
        <input type="text" name="pnpa" id="pnpa">
        <label for="empa">Email pacjenta:</label>
        <input type="email" name="empa" id="empa">
        <label for="cipa">Miasto: </label>
        <input type="text" name="cipa" id="cipa">
        <label for="zcpa">Kod pocztowy:</label>
        <input type="text" name="zcpa" id="zcpa">
        <label for="snpa">Ulica i numer domu</label>
        <input type="text" name="snpa" id="snpa" required>
        <input type="submit" value="Zapisz!" name="pati">
    </form>
    <form method="post">
        <h1>Dane wyjazdowe</h1>
    </form>
    <form method="post">
        <h1>S.A.M.P.L.E i GLASGOW</h1>
    </form>
    <form method="post">
        <h1>Leki i urazy</h1>
    </form>
    <form method="post">
        <h1>Notatki</h1>
        <textarea name="cono" cols="30" rows="10"></textarea>
        <input type="submit" value="Zapisz!" name="Note">
    </form>

</div>
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