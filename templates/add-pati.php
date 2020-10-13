        <div>
        <h1>Dane pacjenta</h1>
        <label for="napa">Imię pacjenta:</label>
        <input type="text" name="napa" id="napa" required value="<?php if(isset($_SESSION['napa'])){ echo $_SESSION['napa'];}?>">
        <label for="lapa">Nazwisko pacjenta:</label>
        <input type="text" name="lapa" id="lapa" require value="<?php if(isset($_SESSION['lapa'])){ echo $_SESSION['lapa'];}?>">
        <label for="pnpa">Numer telefonu:</label>
        <input type="text" name="pnpa" id="pnpa" value="<?php if(isset($_SESSION['pnpa'])){ echo $_SESSION['pnpa'];}?>">
        <label for="empa">Email pacjenta:</label>
        <input type="email" name="empa" id="empa" value="<?php if(isset($_SESSION['empa'])){ echo $_SESSION['empa'];}?>">
        <label for="cipa">Miasto: </label>
        <input type="text" name="cipa" id="cipa" value="<?php if(isset($_SESSION['cipa'])){ echo $_SESSION['cipa'];}?>" required>
        <label for="zcpa">Kod pocztowy:</label>
        <input type="text" name="zcpa" id="zcpa" value="<?php if(isset($_SESSION['zcpa'])){ echo $_SESSION['zcpa'];}?>" required>
        <label for="snpa">Ulica i numer domu:</label>
        <input type="text" name="snpa" id="snpa" required value="<?php if(isset($_SESSION['snpa'])){ echo $_SESSION['snpa'];}?>">
        </div>
        