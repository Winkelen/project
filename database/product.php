<?php
class product{
    public $db = null;


    public function __construct(dbcon $db){
        if(!isset($db->conn)) return null;
        $this->db = $db;
    }

    public function getData($table = 'product'){
        $result = $this->db->conn->query("SELECT * FROM {$table}");
        $resultArr = array();

        while($item = mysqli_fetch_array($result, MYSQLI_ASSOC)){
            $resultArr = $row;
        }
        return $resultArr;
    }
}

$product = new product($db);
print_r($product->getData());
?>