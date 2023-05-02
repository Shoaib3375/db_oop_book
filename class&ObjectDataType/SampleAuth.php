<?php
class SampleAuth{
    private $session = null;
    public function __construct($username,$password)
    {
        $this->authUser($username,$password);
    }
    private function authUser($username, $password){
        echo "Authenticating User \n";
        $this->session = "THESAMPLESESSION";
    }
    private function releaseUserSession(){
        echo "Release User Session \n";
    }
    public function __destruct()
    {
        if ($this->session != null){
            $this->releaseUserSession();
        }
    }
}
$user = new SampleAuth("Shoaib","OrePass");
unset($user);