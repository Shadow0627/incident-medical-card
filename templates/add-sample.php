        <form method="post">
            <h1>S.A.M.P.L.E i GLASGOW</h1>
            <label for="s">S-ymptomy:</label>
            <input type="text" name="s" id="s"  required value="<?php if(isset($_SESSION[''])){ echo $_SESSION[''];}?>">
            <label for="a">A-lergie:</label>
            <input type="text" name="a" id="a" required value="<?php if(isset($_SESSION[''])){ echo $_SESSION[''];}?>">
            <label for="m">M-edykamenty:</label>
            <input type="text" name="m" id="m" required value="<?php if(isset($_SESSION[''])){ echo $_SESSION[''];}?>">
            <label for="p">P-rzeszłość:</label>
            <input type="text" name="p" id="p" required value="<?php if(isset($_SESSION[''])){ echo $_SESSION[''];}?>">
            <label for="l">L-unch:</label>
            <input type="text" name="l" id="l" required value="<?php if(isset($_SESSION[''])){ echo $_SESSION[''];}?>"> 
            <label for="e">E-vent:</label>
            <input type="text" name="e" id="e" required value="<?php if(isset($_SESSION[''])){ echo $_SESSION[''];}?>">
            <label for="eye">Otwieranie oczu:</label>
            <input type="text" name="eye" id="eye" required value="<?php if(isset($_SESSION[''])){ echo $_SESSION[''];}?>">
            <label for="voice">Kontakt słowny:</label>
            <input type="text" name="voice" id="voice" required value="<?php if(isset($_SESSION[''])){ echo $_SESSION[''];}?>">
            <label for="move">Reakcja ruchowa:</label>
            <input type="text" name="voice" id="voice" required value="<?php if(isset($_SESSION[''])){ echo $_SESSION[''];}?>">
            <input type="submit" value="Zapisz !" name="sample">
        </form>