<?php
session_start();
unset($_SESSION['Emri']);
header("location:index.php");
?>