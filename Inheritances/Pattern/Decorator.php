<?php
class HtmlTemplate{
    // any parent class methods
}
class Template1 extends HtmlTemplate{
    protected $_html;
    public function __construct()
    {
        $this->_html = "<p>__text__<p>";
    }

    function set($html)
    {
        $this->_html = $html;
    }

    function render()
    {
        echo $this->_html;
    }
}
class Template2 extends HtmlTemplate{
    protected $_element;
    public function __construct($s)
    {
        $this->_element = $s;
        $this->set("<h2>" . $this->_html . "</h2>");
    }
    public function __call(string $name, array $arguments)
    {
        $this->_element->$name($arguments[0]);
    }
}
class Template3 extends HtmlTemplate{
    protected $_element;
    public function __construct($s)
    {
        $this->_element = $s;
        $this->set("<u>" . $this->_html . "</u>");
    }
    public function __call(string $name, array $arguments)
    {
     $this->_element->$name($arguments[0]);
    }
}