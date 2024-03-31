<?php
include("../conn/conn.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    // Check if files were uploaded
    if (isset($_FILES['image_name']['name'])) {
        $image_name = $_FILES['image_name']['name'];
        $image_tmp = $_FILES['image_name']['tmp_name'];
        $image_size = $_FILES['image_name']['size'];
        $image_type = $_FILES['image_name']['type'];

        $target_directory = '../images/';// Change this path as needed 

        $unique_filename = uniqid() . '_' . $image_name;

        if (!is_dir($target_directory)) {
            mkdir($target_directory, 0777, true);
        }

        if (move_uploaded_file($image_tmp, $target_directory . $unique_filename)) {

            $stmt = $conn->prepare("INSERT INTO tbl_image (image_name) VALUES (:unique_filename)");
            $stmt->bindParam(':unique_filename', $unique_filename);
            $stmt->execute();

            header('Location: http://localhost/image-accordion-gallery-app/');
        } else {

            echo "Error uploading the image.";
        }
    } else {
        echo "Please select an image to upload.";
    }
}
?>
