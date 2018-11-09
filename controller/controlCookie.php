<?php

include_once './model/connect_data.php';
include_once './model/cookieClass.php';
include_once './model/cookieModel.php';

if (!isset($_COOKIE['idCookie'])) {
    //crear modelo.

    $cookie = new cookieModel();
    $cookie->insertCookie();
    $cookie->selectCookie();
    $id = $cookie->getIdCookie();
    setcookie('idCookie', $id, time() + 7200, '/');
} else {
    
}

