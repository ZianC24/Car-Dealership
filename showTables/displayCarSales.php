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
        echo "<h4>Car Sales Table:</h4>";
    } 
    catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();

    }

    $sql = "SELECT invoiceNo, saleDate, salePrice, custID, empID FROM CarSale";
    $statement = $pdo->prepare($sql);
    $statement->execute();

    // show sale number, date of sale, price, customer id and salesperson
    while ($row = $statement->fetch()) {
        echo "<p>
            Sale Number: $row[invoiceNo]<br>
            Date of Sale: $row[saleDate]<br>
            Sales Price: $  $row[salePrice]<br>
            Cusomter Id: $row[custID]<br>
            Salesperson Id: $row[empID]<br>
            <hr>
            </p>";
    }

    
   
    $mysqli->close();
    
?>