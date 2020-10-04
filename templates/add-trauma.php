<form method="post">
        <h1>Leki i urazy</h1>
        <label for="natr">Uraz lub kod ICD:</label>
        <input type="text" name="natr" id="natr" required value="<?php if(isset($_SESSION[''])){ echo $_SESSION[''];}?>">
        <label for="nami">Nazwa leku:</label>
        <input type="text" name="nami" id="nami" required value="<?php if(isset($_SESSION[''])){ echo $_SESSION[''];}?>">
        <input type="submit" value="Zapisz!" name="trauma">
    </form>