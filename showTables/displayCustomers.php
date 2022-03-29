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
        echo "<h4>Customer Table:</h4>";
    } 
    catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();

    }

    $sql = "SELECT custId, firstName, lastName, areaCode, phoneNumber, driversLicNo FROM CarCustomer";
    $statement = $pdo->prepare($sql);
    $statement->execute();

    // show VIN number, make, model and color for all cars 
    // UNION 
    while ($row = $statement->fetch()) {
        echo "<p>
            Customer Id: $row[custId]<br>
            Name: $row[firstName] $row[lastName]<br>
            Phone Number: ($row[areaCode])-$row[phoneNumber]<br>
            Driver License: $row[driversLicNo]<br>
            <hr>
            </p>";
    }

    
   
    $mysqli->close();
    
?>