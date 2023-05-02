<?php
namespace Inheritances;
class Product
{
    protected int $id;
    protected string $title;
    protected float $price;
    public function __construct($id, $title,$price)
    {
        echo "\n Product Constructor .\n";
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
$product = new Product(1, "OOP php", 455.00);
$product->showInfo();
$product = new Product(2,"Docker", 900);

$product->showInfo();
class Book extends Product
{

}
$book = new Book(1,'OOP Php', 390);
$book->showInfo();
class CD extends Product
{

}
$cd = new CD(2,"Echma Script", 999);
$cd->showInfo();
?>