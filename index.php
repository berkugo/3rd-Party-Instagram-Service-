<?php
    
    header("Content-Type: application/json");
    $user= $_GET['user'];
    $user = preg_replace('/[^a-zA-Z0-9_.]/', '', $user);
    if (isset($_GET['user']))
    echo shell_exec("bash insta.770f4f0ca51c93a437a3ab8c0a91f5ca.sh ". "'". $user . "'");

?>
