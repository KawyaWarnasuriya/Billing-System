<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "POS";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT DISTINCT category FROM stock";
$result = $conn->query($sql);

$output = "";
while ($row = $result->fetch_assoc()) {
    $output .= "<div class='category'>{$row['category']}</div>";
}
echo $output;

$conn->close();
?>
