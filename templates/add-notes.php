    
    <form id="add-note" method="post">
        <h1>Notatki</h1>
        <textarea name="cono" cols="30" rows="10" value="<?php if(isset($_SESSION['cono'])){ echo $_SESSION['cono'];}?>"><?php if(isset($_SESSION['cono'])){ echo $_SESSION['cono'];}?></textarea>
        <input type="submit" value="Zapisz!" name="Note">
    </form>
