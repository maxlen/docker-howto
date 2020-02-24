<?php
header("content-type: text");

$host = "db";
$username = "root";
$password = "mypassword!";

$conn = new mysqli($host, $username, $password);

if ($conn->connect_errno > 0) {
    echo $conn->connect_error;
} else {
    echo "DB Connection successful\n\n";

    $result = mysqli_query($conn, "SHOW DATABASES;");
    while ($row = mysqli_fetch_row($result)) {
        echo $row[0] . "\n\n";
    }
}