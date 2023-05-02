<?php
// Array for the member information
$member_info_array = array(
    "name" => "Zaman Niton",
    "position" => "Enterprise Architect",
    "Organization" => "Tappware",
    "behaviour" => "rude"
);
// display the array content
//print_r($member_info_array);

// Object-style definition of a member
$member_info = new stdClass();

// add dynamic properties
$member_info->name = "Shoaib";
$member_info->position = "Enterprise Architect";
$member_info->organization = "Google";
$member_info->behaviour = "Good";
// Display the array content
print_r($member_info);