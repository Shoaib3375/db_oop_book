<?php
class DBConnection{
    private $instance_count = 0;
    private $connection_count = 0;
    public function __construct(){
        $this->instance_count++;
        $this->connection_count++;
    }
    public function getInstanceCount(){
        return $this->instance_count;
    }
    public function getConnectionCount(){
        return $this->connection_count;
    }
    public function increaseInstanceCount(){
        $this->instance_count++;
    }
    public function increaseConnectionCount(){
        $this->connection_count++;
    }
}
// Create Object
$dbc1 = new DBConnection();
$dbc2 = new DBConnection();

// Set value for one object
$dbc1->increaseInstanceCount();
$dbc1->increaseConnectionCount();
echo "Value in Instance1: \n".
     " Instance count: " . $dbc1->getInstanceCount() .
     " Connection Count: " . $dbc1->getConnectionCount();
echo "\nValue in Instance2: \n".
    " Instance count: " . $dbc2->getInstanceCount() .
    " Connection Count: " . $dbc2->getConnectionCount();
?>