<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "POS";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$category = isset($_GET['category']) ? $_GET['category'] : "";

$sql = "SELECT * FROM stock";
if ($category !== "") {
    $sql .= " WHERE category = ?";
}

$stmt = $conn->prepare($sql);
if ($category !== "") {
    $stmt->bind_param("s", $category);
}
$stmt->execute();
$result = $stmt->get_result();

$output = "";
while ($row = $result->fetch_assoc()) {
    $output .= "<div class='item-card' data-name='{$row['name']}' data-price='{$row['price']}'>
                    <img src='{$row['image_path']}' alt='{$row['name']}'>
                    <div>
                        <h4>{$row['name']}</h4>
                        <p>\${$row['price']}</p>
                    </div>
                </div>";
}
echo $output;

$conn->close();
?>
