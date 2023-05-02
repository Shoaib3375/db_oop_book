<?php
/*
Check Property & Memory
*/
class DBConnection{
    static private $instance_count = 0;
    private $connection_count = 0;
    public function __construct()
    {
        self::$instance_count++;
        $this->connection_count++;
    }
    public function getInstanceCount(){
        return self::$instance_count;
    }
    public function getConnectionCount(){
        return $this->connection_count;
    }
    public function increaseInstanceCount(){
        self::$instance_count++;
    }
    public function increaseConnectionCount(){
        $this->connection_count++;
    }
}
$dbc1 = new DBConnection();
$dbc2 = new DBConnection();
// Set value for one object
$dbc1->increaseInstanceCount();
$dbc1->increaseConnectionCount();

echo "Value in Instance1: \n" .
    "Instance Count: " . $dbc1->getInstanceCount() .
    " Connection Count: " .$dbc1->getConnectionCount();
    echo PHP_EOL;
echo "Value in Instance2: \n" .
    "Instance Count: " . $dbc2->getInstanceCount() .
    " Connection Count: " .$dbc2->getConnectionCount();
