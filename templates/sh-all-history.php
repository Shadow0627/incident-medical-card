<?php 
$results = $inci->getalldata($_POST['idin']);
foreach($results as $row)
{
print('Dane pacjenta: ');
 print('Nazwisko pacjenta: '. $row['LAPA']);
 print('Imię pacjenta: '. $row['NAPA']);
 print('Numer telefonu pacjenta: '. $row['PNPA']);
 print('Email pacjenta: '. $row['EMPA']);
 print('Miejsce zamieszkania pacjenta: '. $row['ZCPA'] .' '. $row['CIPA'] .' '. $row['SNPA']);
 print('Dane miejsca zdarzenia: ');
 print('Miejscowość: '. $row['ZCLO'] .' '. $row['CILO'] .' '. $row['STLO']);
 
print('Dane wyjazdu:');
print('Czas wyjazdu/przybycia/powrotu: '. $row['DDTD']. '/'. $row['ARTD'] .'/'. $row['BBTD'] .'<br>');
print('Medyk: '. $row['MENA'] .' '. $row['LAME'] .'<br>');
print('Kod wyjazdu: '.$row['NUEX']);
print('Pilność wyjazdu: ' .$row['NAUO']);
print('Typ wezwania: ' .$row['NATO']);

}

?>