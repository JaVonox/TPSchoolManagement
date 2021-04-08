<?php
//This is used for the logout button, and kills all the session data.
session_start(); 

session_unset();
session_destroy();
header("Location: ../index.php");
?>