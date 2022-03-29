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
        echo "<h4>Used Cars Search Result:</h4>";
    } 
    catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();

    }
    
    $mileage = $_POST['mileage'];
    $color = $_POST['color'];


    $sql = "SELECT CarUsedCar.make, CarUsedCar.model, CarUsedCar.modelYear, color, bookValue
            FROM CarUsedCar
            WHERE mileage <= '$mileage' AND color = '$color';";
    $statement = $pdo->prepare($sql);
    $statement->execute();
    
    
    
    // show sale number, date of sale, price, customer id and salesperson
    while ($row = $statement->fetch()) {
        echo "<p>
            Make: $row[0]<br>
            Model: $row[1]<br>
            Year: $row[2] <br>
            Color: $row[color]<br>
            Value: $$row[bookValue]
            <hr>
            </p>";
    }
    
    $mysqli->close();
    
?>