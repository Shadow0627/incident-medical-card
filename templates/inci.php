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
<?php include '/templates/add-pati.php'; ?>
    <form method="post">
        <h1>Dane wyjazdowe</h1>
        <label for="exco">Kod wyjazdu:</label>
        <input type="text" name="exco" id="exco" required>
        <label for="cilo">Miejscowść wypadku:</label>
        <input type="text" name="cilo" id="cilo" required>
        <label for="zclo">Kod poctowy:</label>
        <input type="text" name="zclo" id="zclo" required>
        <label for="stlo">Ulica i numer domu:</label>
        <input type="text" name="stlo" id="stlo" required>
        <label for="ddtd">Data  godzina wyjazdu:</label>
        <input type="datetime-local" name="ddtd" id="ddtd" required>
        <label for="artd">Data i godzina przybycia:</label>
        <input type="datetime-local" name="artd" id="artd" required>
        <label for="bbtd">Dta i godzina powrotu:</label>
        <input type="datetime-local" name="bbtd" id="bbtd" required>
        <label for="nato">Typ wezwania: </label>
        <input type="text" name="nato" id="nato" required>
        <label for="tona">Typ zdarzenia:</label>
        <input type="text" name="tona" id="tona" required>
        <label for="nauo">Pilność zdarzenia:</label>
        <input type="text" name="nauo" id="nauo" required>
        <input type="submit" value="Zapisz !" name='exit'>
    </form>
    <form method="post">
        <h1>S.A.M.P.L.E i GLASGOW</h1>
        <form method="post">
            <label for="s">S-ymptomy:</label>
            <input type="text" name="s" id="s"  required>
            <label for="a">A-lergie:</label>
            <input type="text" name="a" id="a" required>
            <label for="m">M-edykamenty:</label>
            <input type="text" name="m" id="m" required>
            <label for="p">P-rzeszłość:</label>
            <input type="text" name="p" id="p" required>
            <label for="l">L-unch:</label>
            <input type="text" name="l" id="l" required>
            <label for="e">E-vent:</label>
            <input type="text" name="e" id="e" required>
            <label for="eye">Otwieranie oczu:</label>
            <input type="text" name="eye" id="eye" required>
            <label for="voice">Kontakt słowny:</label>
            <input type="text" name="voice" id="voice" required>
            <label for="move">Reakcja ruchowa:</label>
            <input type="text" name="voice" id="voice" required>
            <input type="submit" value="Zapisz !" name="sample">
        </form>
    </form>
    <form method="post">
        <h1>Leki i urazy</h1>
        <label for="natr">Uraz lub kod ICD:</label>
        <input type="text" name="natr" id="natr" required>
        <label for="nami">Nazwa leku:</label>
        <input type="text" name="nami" id="nami" required>
        <input type="submit" value="Zapisz!" name="trauma">
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