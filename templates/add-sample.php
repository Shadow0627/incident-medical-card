<div>
            <h1>S.A.M.P.L.E i GLASGOW</h1>
            <label for="s">S-ymptomy:</label>
            <input type="text" name="s" id="s"  required value="<?php if(isset($_SESSION['s'])){ echo $_SESSION['s'];}?>">
            <label for="a">A-lergie:</label>
            <input type="text" name="a" id="a" required value="<?php if(isset($_SESSION['a'])){ echo $_SESSION['a'];}?>">
            <label for="m">M-edykamenty:</label>
            <input type="text" name="m" id="m" required value="<?php if(isset($_SESSION['m'])){ echo $_SESSION['m'];}?>">
            <label for="p">P-rzeszłość:</label>
            <input type="text" name="p" id="p" required value="<?php if(isset($_SESSION['p'])){ echo $_SESSION['p'];}?>">
            <label for="l">L-unch:</label>
            <input type="text" name="l" id="l" required value="<?php if(isset($_SESSION['l'])){ echo $_SESSION['l'];}?>"> 
            <label for="e">E-vent:</label>
            <input type="text" name="e" id="e" required value="<?php if(isset($_SESSION['e'])){ echo $_SESSION['e'];}?>">
            <label for="eye">Otwieranie oczu:</label>
            <input type="text" name="eye" id="eye" required value="<?php if(isset($_SESSION['eye'])){ echo $_SESSION['eye'];}?>">
            <label for="voice">Kontakt słowny:</label>
            <input type="text" name="voice" id="voice" required value="<?php if(isset($_SESSION['voice'])){ echo $_SESSION['voice'];}?>">
            <label for="move">Reakcja ruchowa:</label>
            <input type="text" name="move" id="move" required value="<?php if(isset($_SESSION['move'])){ echo $_SESSION['move'];}?>">
            </div>
