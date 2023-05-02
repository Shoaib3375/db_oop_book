<?php
    class SingtonPattern{
        //1
        protected static $_instance = null;
        //2
        public function __construct()
        {
            // do validation
        }
        // 3
        public static function getInstance(){
            if (!self::$_instance instanceof self){
                self::$_instance = new self;
            }
            return self::$_instance;
        }
        //4
        private function __clone(): void
        {
          // do nothing
        }
        //5
        public function __destruct()
        {
          // release connection
            self::$_instance = null;
        }
    }
    //
$dbcon1 = SingtonPattern::getInstance();
$dbcon2 = SingtonPattern::getInstance();
$dbcon3 = SingtonPattern::getInstance();
var_dump($dbcon1);
var_dump($dbcon2);
var_dump($dbcon3);