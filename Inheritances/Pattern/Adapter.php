<?php
class SimpleBook{
    private $author;
    private $title;
    public function __construct($author_in, $title_in)
    {
        $this->author = $author_in;
        $this->title = $title_in;
    }

    function getAuthor()
    {
        return $this->author;
    }

    function getTitle()
    {
        return $this->title;
    }
}

class BookAdapter{
    private $book;
    public function __construct(SimpleBook $book_in)
    {
        $this->book = $book_in;
    }

    function getAuthorAndTitle()
    {
        return $this->book->getTitle() . ' by ' .$this->book->getAuthor();
    }
}
// usage
$book = new SimpleBook("Gamma, Helm, Johnson, & Vlisides","Design Patterns");
$bookAdapter = new BookAdapter($book);
echo "Author and Title: ". $bookAdapter->getAuthorAndTitle();