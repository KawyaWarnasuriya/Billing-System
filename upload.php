<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "POS";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$category = $_POST['category'];
$name = $_POST['name'];
$price = $_POST['price'];

$target_dir = "uploads/";
if (!file_exists($target_dir)) {
    mkdir($target_dir, 0777, true);
}

$image_name = basename($_FILES["image"]["name"]);
$target_file = $target_dir . time() . "_" . $image_name;
$imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

$allowed_types = ["jpg", "jpeg", "png", "gif"];

if (in_array($imageFileType, $allowed_types)) {
    if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
        $sql = "INSERT INTO stock (category, name, price, image_path) VALUES (?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ssds", $category, $name, $price, $target_file);

        if ($stmt->execute()) {
            echo "Product added successfully!";
        } else {
            echo "Error: " . $stmt->error;
        }
    } else {
        echo "Image upload failed.";
    }
} else {
    echo "Invalid file type. Only JPG, JPEG, PNG, and GIF are allowed.";
}

$conn->close();
?>
