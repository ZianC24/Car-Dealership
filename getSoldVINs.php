
<?php
    $db_host = '127.0.0.1';
    $db_user = 'sqluser';
    $db_password = 'password';
    $db_name = 'SemesterProject';
    $db_port = 3306;

    try {
        $pdo = new PDO("mysql:host=$db_host;dbname=$db_name;db", $db_user, $db_password);
        // set the PDO error mode to exception 
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        
    } 
    catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();

    }

    $sql = "SELECT CarNewCar.VIN
            FROM CarNewCar, carSale
            WHERE CarNewCar.VIN = CarSale.NewCarVIN
            UNION
            SELECT CarUsedCar.VIN
            FROM CarUsedCar, CarSale
            WHERE CarUsedCar.VIN = CarSale.UsedCarVin;";

    $statement = $pdo->prepare($sql);
    $statement->execute();

    while ($row = $statement->fetch()) {
        $resultSet[] = $row['VIN'];
    }



  
  ?>