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
$sql = "DELETE FROM CarNewCar WHERE VIN = ?;";
$stmt = $pdo->prepare($sql);
$stmt->execute([$VIN]);
?>