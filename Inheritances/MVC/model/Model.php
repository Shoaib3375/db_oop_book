<?php
include_once "model/Book.php";
class Model {
    public function getBookList() {
        // here we use sample array to hold the data
        // in real application data will come from
        // data repository (from db, file, etc .)
        return array(
            "PHP Basic"           => new Book( 1, "PHP Basic", 650.00, "Niton", "To learn PHP Language" ),
            "Gulliveer's Travels" => new Book( 2, "Gulliver's Travels", 990, "JOnathan Swift", "Children's Story Book" ),
            "The Hobbit"          => new Book( 3, "The Hobbit", 750, "J.R.R. Tolkien", "Children's Story Book" ),
        );
    }
    public function getBook( $title ) {
        // first get book list array from previous function
        // then get the book by it's title key
        // in a real application this will be done through a db
        // select command
        $book_list = $this->getBookList();
        return $book_list[$title];
    }
}