<?php
$players = [];
$players[] = ["Name" => "Ronaldo", "Age" => 31, "Country" => "Portugal", "Team" => "Real Madrid"];
$players[] = ["Name" => "Messi", "Age" => 27, "Country" => "Argentina", "Team" => "Barcelona"];
$players[] = ["Name" => "Neymar", "Age" => 24, "Country" => "Brazil", "Team" => "Barcelona"];
$players[] = ["Name" => "Rooney", "Age" => 30, "Country" => "England", "Team" => "Man United"];
foreach ($players as $index => $playerInfo) {
    echo "Info of player # " . ($index + 1) . "\n";
    foreach ($playerInfo as $key => $value) {
        echo $key . ": " . $value . "\n";
    }
    echo "\n";
}
?>