<?php
include_once './controller/controlCookie.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <form action="./controller/controlInfo.php" method="get">
        <img style="width:200px;height:100px;" src="img/google.jpg" alt=""/><br/>
        <input type="text" name="search"/>&nbsp;<button type="submit">Enviar</button>
        </form>
    </body>
</html>
