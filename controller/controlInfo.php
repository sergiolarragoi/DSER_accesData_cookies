<?php
include '../model/connect_data.php';
include '../functions/myFunctions.php';

$dateTime=getMyDateTime();
$ip=getIP();
$browser=getBrowser();
$lang=getLanguage();
saveLog($dateTime,$ip,$browser,$lang);

$search = cookieModel();