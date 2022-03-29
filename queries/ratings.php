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
        echo "<h4>Ratings:</h4>";
    } 
    catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();

    }


    $sql = "SELECT dealershipRating, carRating, salespersonRating, firstName, lastName, saleDate
            FROM CarSale, CarSurvey, CarSalesperson
            WHERE CarSale.invoiceNo = CarSurvey.invoiceNo AND CarSale.empID = CarSalesperson.empId;";
    $statement = $pdo->prepare($sql);
    $statement->execute();
    
    
    
    
    // show sale number, date of sale, price, customer id and salesperson
    while ($row = $statement->fetch()) {
        echo "<p>
            PurchaseDate: $row[saleDate]<br>
            Dealership Rating: $row[dealershipRating]<br>
            Car Rating: $row[carRating]<br>
            Salesperson Name: $row[firstName] $row[lastName]<br>
            Salesperson Rating: $row[salespersonRating]
            <hr>
            </p>";
    }
    
    $mysqli->close();
    
?>