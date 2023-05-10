<?php
include_once "model/Product.php.php";
class Book extends Product {
    protected $author;
    protected $description;
    public function __construct( $id, $title, $price, $author, $description ) {
        parent::__construct( $id, $title, $price );
        $this->author = $author;
        $this->description = $description;
    }
    public function getAuthor() {
        return $this->author;
    }
    public function getDecription() {
        return $this->description;
    }
}