<?php

namespace Inheritances\Interface;

interface a
{
    public function a1();
}

interface x extends a
{
    public function x1();
}

class SomeClass implements x
{
    public function a1()
    {
        echo "SomeClass::a1()<br>";
    }
    public function x1()
    {
        echo "SomeClass::x1()<br>";
    }
}
$obj = new SomeClass();
$obj->a1();