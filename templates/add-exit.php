<div>

        <h1>Dane wyjazdowe</h1>
        <label for="exco">Kod wyjazdu:</label>
        <input type="text" name="exco" id="exco" required value="<?php if(isset($_SESSION['exco'])){ echo $_SESSION['exco'];}?>">
        <label for="cilo">Miejscowść wypadku:</label>
        <input type="text" name="cilo" id="cilo" required value="<?php if(isset($_SESSION['cilo'])){ echo $_SESSION['cilo'];}?>">
        <label for="zclo">Kod poctowy:</label>
        <input type="text" name="zclo" id="zclo" required value="<?php if(isset($_SESSION['zclo'])){ echo $_SESSION['zclo'];}?>">
        <label for="stlo">Ulica i numer domu:</label>
        <input type="text" name="stlo" id="stlo" required value="<?php if(isset($_SESSION['stlo'])){ echo $_SESSION['stlo'];}?>">
        <label for="ddtd">Data  godzina wyjazdu:</label>
        <input type="datetime-local" name="ddtd" id="ddtd" required value="<?php if(isset($_SESSION['ddtd'])){ echo $_SESSION['ddtd'];}?>"> 
        <label for="artd">Data i godzina przybycia:</label>
        <input type="datetime-local" name="artd" id="artd" required value="<?php if(isset($_SESSION['artd'])){ echo $_SESSION['artd'];}?>">
        <label for="bbtd">Dta i godzina powrotu:</label>
        <input type="datetime-local" name="bbtd" id="bbtd" required value="<?php if(isset($_SESSION['bbtd'])){ echo $_SESSION['bbtd'];}?>">
        <label for="nato">Typ wezwania: </label>
        <input type="text" name="nato" id="nato" required value="<?php if(isset($_SESSION['nato'])){ echo $_SESSION['nato'];}?>">
        <label for="tona">Typ zdarzenia:</label>
        <input type="text" name="tona" id="tona" required value="<?php if(isset($_SESSION['tona'])){ echo $_SESSION['tona'];}?>">
        <label for="nauo">Pilność zdarzenia:</label>
        <input type="text" name="nauo" id="nauo" required value="<?php if(isset($_SESSION['nauo'])){ echo $_SESSION['nauo'];}?>">
        </div>
