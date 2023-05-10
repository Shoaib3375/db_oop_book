<?php

namespace Inheritances\Abstract;

class Shape
{
    protected static $id;
    public function __construct()
    {
        self::$id++;
    }
    public function getArea(){
        echo "\nArea of shpae " . self::$id . ": None";
    }
}
class Circle extends Shape
{
    private $m_fRaidus;
    public function __construct($radius)
    {
        parent::__construct();
        $this->m_fRaidus = $radius;
    }
    public function getArea()
    {
        $area = M_PI * $this->m_fRaidus * $this->m_fRaidus;
        echo "\nArea of Circle with ID: " . self::$id . " is " . $area;
    }
}
class Rectangle extends Shape
{
    private $m_fWidth;
    private $m_fHeight;
    public function __construct($width, $height)
    {
        parent::__construct();
        $this->m_fWidth = $width;
        $this->m_fHeight = $height;
    }
}


$shape = new Shape();
$shape->getArea();

$circle = new Circle(22);
$circle->getArea();

$rect = new Rectangle(12,22);
$rect->getArea();


