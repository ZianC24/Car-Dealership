<?php
function getPDO(String $dbname = 'SemesterProject', String $user = 'sqluser', String $pass = 'password')
{
    $dsn = 'mysql:host=localhost;dbname=' . $dbname;
    $pdo = new PDO($dsn, $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return $pdo;
}
$pdo = getPDO();

$VIN = $_POST['VIN'];
$make = $_POST['make'];
$model = $_POST['model'];
$listPrice = $_POST['listPrice'];
$dateManufactured = $_POST['dateManufactured'];
$placeManufactured = $_POST['placeManufactured'];
$cylinders = $_POST['cylinders'];
$doors = $_POST['doors'];
$weight = $_POST['weight'];
$capacity = $_POST['capacity'];
$color = $_POST['color'];
$deliveryDate = $_POST['deliveryDate'];
$deliveryMiles = $_POST['deliveryMiles'];

// insert data from post into database
$sql = "INSERT INTO CarNewCar VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
$stmt = $pdo->prepare($sql);
$stmt->execute([$VIN, $make, $model, $listPrice, $dateManufactured, $placeManufactured, $cylinders, $doors, $weight, $capacity, $color, $deliveryDate, $deliveryMiles]);
$message = 'OK'
?>