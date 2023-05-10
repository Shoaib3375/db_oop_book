<?php
namespace Inheritances;
class Products
{
    protected int $id;
    protected string $title;
    protected float $price;
    public function __construct($id, $title,$price)
    {
        echo "\n Products Constructor .\n";
        $this->id = $id;
        $this->title = $title;
        $this->price = $price;
    }

    public function showInfo(){
        echo "\n --Produt Info-- \n";
        echo "Title: $this->title \n";
        echo "Price $this->price \n";
    }
}
$product = new Products(1, "OOP php", 455.00);
$product->showInfo();
$product = new Products(2,"Docker", 900);

$product->showInfo();