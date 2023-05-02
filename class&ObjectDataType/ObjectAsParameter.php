<?php
class Post{
    private string $post;
    public function __construct($post)
    {
        $this->post =$post;
    }
    public function showPost(){
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
    public function showName(){
        echo "All posts from " . $this->name . ":\n";
    }
    public function addPost(Post $post){
        if ($post != null && !empty($post)){
            $this->posts[] = $post;
        }
    }
    public function getPosts(){
        // return post array
        return $this->posts;
    }
    public function resetPosts(){
        unset($this->posts);
    }
}
$user = new User("Shoaib"); // create user
$user->resetPosts();
// add post to user
$p =  new Post("Sample post 1 ");
$user->addPost(new Post("Sample post 2"));
$user->addPost(new Post("Sample post 3"));
// show user data
$user->showName();
$posts = $user->getPosts();
foreach ($posts as $post) {
    $post->showPost();
}