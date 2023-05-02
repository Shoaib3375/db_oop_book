<?php
class BlogMember{
    /*
     * Member's first name
     * @var string
     * @access private
     */
    private $first_name;
    /*
     * Member's last name
     * @var string
     * @access private
     */
    private $last_name;
    /*
     * Member's email
     * @var string
     * @access private
     */
    private $email;
    /*
     * The constructor
     *
     * If no param give use empty string for member's data
     *
     * @param string $first_name The first name
     * @param string $last_name The last name
     * @param string $email The email
      */
    public function __construct($first_name,$last_name,$email)
    {
        $this->first_name = $first_name;
        $this->last_name = $last_name;
        $this->email = $email;
    }

}