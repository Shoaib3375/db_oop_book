<?php
class Consultant{
    private $name = '';
    private $role = '';
    public function __construct($name, $role)
    {
        $this->name = $name;
        $this->role = $role;
    }
    public function setConsultant($name, $role){
        $this->name = $name;
        $this->role = $role;
    }
    public function showConsultant(){
        echo "Consultant: " .$this->name . "\n";
        echo "Role: " . $this->role . "\n";
    }
}
$p1 = new Consultant("Shoaib", "Software Developer");
$p2 = $p1;
$p2->setConsultant();