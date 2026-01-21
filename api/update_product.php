<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, ngrok-skip-browser-warning");
header("Content-Type: application/json; charset=UTF-8");

require 'db.php';
$data = json_decode(file_get_contents("php://input"));

if($data && !empty($data->id)) {
    $id = $conn->real_escape_string($data->id);
    $name = $conn->real_escape_string($data->name);
    $price = $conn->real_escape_string($data->price);
    $qty = $conn->real_escape_string($data->qty);
    $image = $conn->real_escape_string($data->image); // ✅ รับค่ารูปภาพ

    // ✅ อัปเดตคอลัมน์ image ด้วย
    $sql = "UPDATE products SET name='$name', price='$price', qty='$qty', image='$image' WHERE id='$id'";

    if ($conn->query($sql) === TRUE) {
        echo json_encode(["status" => "success"]);
    } else {
        echo json_encode(["status" => "error", "message" => $conn->error]);
    }
}
$conn->close();
?>