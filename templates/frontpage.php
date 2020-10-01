<?php include 'head.php'; ?>
<header class="main-head-log">
    <h1>Zaloguj do systemu</h1>
</header>
<form method="post" class="main-form-log">
    <label for="name">Nazwa:</label>
    <input type="text" required id="name" name="name">
    <label for="pass">Hasło:</label>
    <input type="password" required id="pass" name="password">
    <input type="submit" value="Zaloguj!" name="login">
</form>
<?php include 'footer.php'; ?>

<?php
if(isset($_POST['login']))
{
    if(isset($_POST['name']) && isset($_POST['password']))
    {
        $dane = array();
        $dane['login'] = $_POST['name'];
        $dane['pass'] = $_POST['password'];
        if($user->loginuser($dane) == true)
        {
            header('Location: /addinci.php');
        }
        
    }
}
 ?>
