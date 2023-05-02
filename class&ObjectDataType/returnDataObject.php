<?php
class Post{
    private string $post;
    public function __construct($post)
    {
        $this->post = $post;
    }
    public function showPost():void{
        echo $this->post . "\n";
    }
}
class User{
    private string $name;
    private array $posts;
    public function __construct($name)
    {
        $this->name = $name;
    }
    public function showName(): void
    {
        echo "Last post from " . $this->name . ":\n";
    }
    private function readPosts():void{
        // reset array
        unset($this->posts);
        // get post list
        $this->posts[] = new Post("Sample post 1");
        $this->posts[] = new Post("Sample post 2");
        $this->posts[] = new Post("Sample post 3");
    }


    public function getLastPost(){
        // read posts
        $this->readPosts();
        $count = count($this->posts);
        if ($count > 0){
            return $this->posts[$count-1];
        }else{
            return null;
        }
    }
}
$user = new User("Islam");
$user->showName();
// get user last post
$last_post = $user->getLastPost();
if ($last_post != null){
    $last_post->showPost();
}