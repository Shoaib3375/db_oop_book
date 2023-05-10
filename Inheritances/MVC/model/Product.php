<?php
class Product{
    protected $id;
    protected $title;
    protected $price;

    public function __construct($id,$title,$price)
    {
        $this->id = $id;
        $this->title = $title;
        $this->price = $price;
    }
    public function getTitle(){
        return $this->title;
    }
    public function getPrice(){
        return $this->price;
    }
}