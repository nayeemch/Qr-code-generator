<?php session_start();
$dbserver = 'localhost'; // 127.0.0.1
$dbuser = 'deenitec_qr';
$dbpassword = 'deenitec_qr';
$database  = 'deenitec_qr';

$conn = mysqli_connect($dbserver, $dbuser, $dbpassword, $database);

mysqli_set_charset($conn, 'utf8');

if (!$conn) {
    die("Couldn't Connect to the database". mysqli_connect_error());
}
