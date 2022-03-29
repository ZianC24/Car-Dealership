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
        echo "<h4>Car Sale:</h4>";
    } 
    catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();

    }

    $VIN = $_POST['carVIN'];

    $sql = "SELECT VIN, make, model, CarSalesperson.firstName, CarSalesperson.lastName, CarCustomer.firstName, CarCustomer.lastName, CarCustomer.areaCode, CarCustomer.phoneNumber
            FROM CarNewCar, CarSale, CarSalesperson, CarCustomer
            WHERE CarNewCar.VIN = '$VIN' AND CarSale.newCarVin = CarNewCar.VIN AND CarSale.empID = CarSalesperson.empID AND CarSale.custID = CarCustomer.custId
            UNION
            SELECT VIN, make, model, CarSalesperson.firstName, CarSalesperson.lastName, CarCustomer.firstName, CarCustomer.lastName, CarCustomer.areaCode, CarCustomer.phoneNumber
            FROM CarUsedCar, CarSale, CarSalesperson, CarCustomer
            WHERE CarUsedCar.VIN = '$VIN' AND CarSale.UsedCarVin = CarUsedCar.VIN AND CarSale.empID = CarSalesperson.empID AND CarSale.custID = CarCustomer.custId;";
    $statement = $pdo->prepare($sql);
    $statement->execute();
    
    
    
    
    // show sale number, date of sale, price, customer id and salesperson
    while ($row = $statement->fetch()) {
        echo "<p>
            
            VIN: $row[VIN]<br>
            Make: $row[make]<br>
            Model: $row[model] <br>
            Salesperson: $row[3] $row[4]<br>
            Customer: $row[5] $row[6]<br>
            Customer Number: ($row[7])-$row[8]
            <hr>
            </p>";
    }
    
    $mysqli->close();
    
?>