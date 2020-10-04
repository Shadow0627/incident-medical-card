    
    <form method="post">
        <h1>Notatki</h1>
        <textarea name="cono" cols="30" rows="10" value="<?php if(isset($_SESSION[''])){ echo $_SESSION[''];}?>"></textarea>
        <input type="submit" value="Zapisz!" name="Note">
    </form>
