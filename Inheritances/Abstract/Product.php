<?php

namespace Inheritances\Abstract;

class Product
{
    public  $name;
    public $code;
    public $price;
    public $exp_date;
}
abstract class FileReader{
    private $filename;
    public function __construct($filename)
    {
        $this->filename = $filename;
    }
    public function getData(){
        if (!is_readable($this->getFilename())){
            throw new \Exception('file[' . $this->getFilename(). '] is not readable !');
        }
        return $this->readData($this->getFilename());
    }
    public function getFilename(){
        return $this->filename;
    }
    protected abstract function readData($filename);
}

class FileReaderCSV extends FileReader{
    public function readData($filename)
    {
        $fp = fopen($filename, 'r');
        $return_value = array();

        while ($data = fgetcsv($fp, 4096,',')){
            $p = new Product();
            $p->name = $data[1];
            $p->code = $data[0];
            $p->price = $data[2];
            $p->exp_date = $data[3];
            $return_value[] = $p;
        }
        fclose($fp);
        return $return_value;
    }
}
class FileReaderTSV extends FileReader{
    protected function readData($filename)
    {
        $fp = fopen($filename, 'r');
        $return_value = array();
        while ($buffer = fgets($fp, 4096)){
            list($item_code,$item_name, $price,$exp_date) = explode('\t', rtrim($buffer));
            $p = new Product();
            $p->name = $item_name;
            $p->code = $item_code;
            $p->price = $price;
            $p->exp_date = $exp_date;
            $return_value[] = $p;
        }
        fclose($fp);
        return $return_value;
    }
}
class FileReaderXML extends FileReader{
    public function readData($filename)
    {
        $xml = simplexml_load_file($filename);
        $return_value = array();

        foreach ($xml->item as $item){
            $p = new Product();


        }
    }
}