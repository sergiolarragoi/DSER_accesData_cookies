<?php

class cookieModel extends cookieClass {

    private $link;
    private $list;
    
    function getList() {
        return $this->list;
    }

    
    public function OpenConnect() {
        $konDat = new connect_data();
        try {
            $this->link = new mysqli($konDat->host, $konDat->userbbdd, $konDat->passbbdd, $konDat->ddbbname);
            // mysqli klaseko link objetua sortzen da dagokion konexio datuekin
            // se crea un nuevo objeto llamado link de la clase mysqli con los datos de conexión. 
        } catch (Exception $e) {
            echo $e->getMessage();
        }
        $this->link->set_charset("utf8"); // honek behartu egiten du aplikazio eta 
        //                  //databasearen artean UTF -8 erabiltzera datuak trukatzeko
    }

    public function CloseConnect() {
        mysqli_close($this->link);
    }

    public function insertCookie() {
        $this->OpenConnect();
        $sql = "CALL spInsertCookie('$this->idCookie')";
        $this->link->query($sql);
        $this->CloseConnect();
    }

    public function selectCookie() {
        $this->OpenConnect();
        $sql = "CALL spSelectCookie()";
        $this->list = array();
        $result = $this->link->query($sql);
        var_dump($result);
        while ($row = mysql_fetch_array($result, MYSQLI_ASSOC)) {
            
            $this->setIdCookie($row['idCookie']);
            
        }
        echo 'cookieId= '.$row;
        mysqli_free_result($result);
        $this->CloseConnect();
    }

}
