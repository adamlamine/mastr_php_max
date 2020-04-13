<?php


//TODO: loop through POSTed data and create command string for mrswatson

echo "echoing received data: ";
$rest_json = file_get_contents("php://input");
$_POST = json_decode($rest_json, true);
print_r($_POST);