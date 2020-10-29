<?php 
$results = $inci->getalldata($_POST['idin']);
foreach($results as $row)
{
 print('Nazwisko pacjenta: '. $row['LAPA'] .'<br>');
 print('Czas wyjazdu/powrotu: '. $row['DDTD']. '/'. $row['BBTD'] .'<br>');
 print('Miejscowość: '. $row['CILO'] .'<br>');
 print('Medyk: '. $row['MENA'] .' '. $row['LAME'] .'<br>');
}

?>