<?php
class Post{
    private string $post;
    public function __construct($post)
    {
        $this->post = $post;
    }

    public function showPost():void{
        echo $this->post ."\n";
    }
}
class User{
    private string $name;
    private array $posts = [];
    public function __construct($name)
    {
        $this->name = $name;
    }

    public function showName(): void
    {
        echo "Posts from " . $this->name . ":\n";
    }
    public function showPosts(): void
    {
        // reset post to avoid duplicate append
        unset($this->posts);
        // get post list (here created as sample)
        $this->posts[] = new Post("Sample post 1");
        $this->posts[] = new Post("Sample post 2");
        $this->posts[] = new Post("Sample post 3");
        foreach ($this->posts as $post){
            $post->showPost();
        }
    }
}
$user = new User("Shoaib");
$user->showName();
$user->showPosts();