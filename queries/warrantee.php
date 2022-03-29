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
        echo "<h4>Warrantee Search Results:</h4>";
    } 
    catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();

    }
    
    $price = $_POST['price'];
    $period = $_POST['period'];


    $sql = "SELECT warType, cost, CarWarrantee.period
            FROM CarWarrantee
            WHERE cost < '$price' AND period < '$period';";
    $statement = $pdo->prepare($sql);
    $statement->execute();
    
    
    
    
    // show sale number, date of sale, price, customer id and salesperson
    while ($row = $statement->fetch()) {
        echo "<p>
            Warrantee Type: $row[warType] <br>
            Cost: $$row[cost] <br>
            Period: $row[period]
            
            <hr>
            </p>";
    }
    
    $mysqli->close();
    
?>