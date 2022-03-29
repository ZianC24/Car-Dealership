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
        echo "<h4>HERE ARE ALL OF THE NEW AND USED CARS:</h4>";
    } 
    catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();

    }

    $sql = "SELECT VIN, make, model, color
            FROM CarNewCar
            UNION
            SELECT VIN, make, model, color
            FROM CarUsedCar;";
    $statement = $pdo->prepare($sql);
    $statement->execute();

    // show VIN number, make, model and color for all cars 
    // UNION 
    while ($row = $statement->fetch()) {
        echo "<p>
            Car VIN: $row[VIN]<br>
            Car Make: $row[make]<br>
            Car Model: $row[model]<br>
            Car Color: $row[color]<br>
            <hr>
            </p>";
    }

    
   
    $mysqli->close();
    
?>