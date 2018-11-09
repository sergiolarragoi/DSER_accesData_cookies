<?php

function getMyDateTime() {
    return date('Y-m-d H:i');
}

function getIP() {
    $share = filter_input(INPUT_SERVER, 'HTTP_CLIENT_IP');
    $proxy = filter_input(INPUT_SERVER, 'HTTP_X_FORWARDED_FOR');
    $remote = filter_input(INPUT_SERVER, 'REMOTE_ADDR');

    if ($share != NULL) {
        $ip_address = $share;
    } elseif ($proxy != NULL) {
        $ip_address = $proxy;
    } else {
        $ip_address = $remote;
    }
    return $ip_address;
}

function getBrowser() {
    $browser = filter_input(INPUT_SERVER, 'HTTP_USER_AGENT');
    $retBrowser = '';
    if (strpos($browser, 'Firefox') !== false) {
        $retBrowser = 'Firefox';
    } elseif (strpos($browser, 'Edge') !== false) {
        $retBrowser = 'Edge';
    } elseif (strpos($browser, 'Chrome') !== false) {
        $retBrowser = 'Chrome';
    } else {
        $retBrowser = 'other';
    }
    return $retBrowser;
}

function getLanguage() {
    $Lang = '';
    $httpLang = filter_input(INPUT_SERVER, 'HTTP_ACCEPT_LANGUAGE');
    if ($httpLang) {
        $Lang = substr($httpLang, 0, 2);
    }
    return $Lang;
}

//function saveLog($dateTime, $ip, $browser, $lang) {
//
//    //http://php.net/manual/en/function.file-put-contents.php
//
//    $line = "$dateTime|$ip|$browser|$lang|\n";
//    file_put_contents('log.txt', $line, FILE_APPEND | LOCK_EX);
//}
