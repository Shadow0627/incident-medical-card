<?php 
$results = $inci->getalldata($_POST['idin']);
foreach($results as $row)
{
    print('<div class="history-sh">');
print('Dane pacjenta: ');
 print('Nazwisko pacjenta: '. $row['LAPA']. '<br>');
 print('Imię pacjenta: '. $row['NAPA']. '<br>');
 print('Numer telefonu pacjenta: '. $row['PNPA']. '<br>');
 print('Email pacjenta: '. $row['EMPA']. '<br>');
 print('Miejsce zamieszkania pacjenta: '. $row['ZCPA'] .' '. $row['CIPA'] .' '. $row['SNPA']. '<br>');
 print('</div>');
 print('<div class="history-sh">');
 print('Dane miejsca zdarzenia: ');
 print('Miejscowość: '. $row['ZCLO'] .' '. $row['CILO'] .' '. $row['STLO']. '<br>');
 print('</div>');
 print('<div class="history-sh">');
print('Dane wyjazdu:');
print('Czas wyjazdu/przybycia/powrotu: '. $row['DDTD']. '/'. $row['ARTD'] .'/'. $row['BBTD'] .'<br>');
print('Medyk: '. $row['MENA'] .' '. $row['LAME'] .'<br>');
print('Kod wyjazdu: '.$row['NUEX']. '<br>');
print('Pilność wyjazdu: ' .$row['NAUO']. '<br>');
print('Typ wezwania: ' .$row['NATO']. '<br>');
print('Typ zdarznia: ' .$row['NOTO']. '<br>');
print('</div>');
print('<div class="history-sh">');
print('Leki i urazy:');
print($row['NAME']. '<br>');
print(' ');
print($row['NATR'].' '. $row['ICTR']. '<br>');
print('</div>');
print('<div class="history-sh">');
print('Sample oraz glasgow: <br>');
print("S: " .$row['SYSA']. '<br>');
print("A: " .$row['ALSA']. '<br>');
print("M: " .$row['MESA']. '<br>');
print("P: " .$row['PASA']. '<br>');
print("L: " .$row['LASA']. '<br>');
print("E: " .$row['EVSA']. '<br>');
print('<br>');
print($row['EYGL']. '<br>');
print($row['VOGL']. '<br>');
print($row['MOGL']. '<br>');
print('</div>');
print('<div class="history-sh">');
print('Notatka: ');
print($row['CONO']. '<br>');
print('</div>');
print('<div>');
print('</div>');
}

?>
<div class="history-sh"><a href="/index.php">POWRÓT</a></div>