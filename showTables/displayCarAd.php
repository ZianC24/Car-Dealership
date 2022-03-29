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
        echo "<h4>Car Ad Table:</h4>";
    } 
    catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();

    }

    $sql = "SELECT placedIn, initialDate, totalCost, areaCode FROM CarAd";
    $statement = $pdo->prepare($sql);
    $statement->execute();

    // show placed in location, date posted, total cost and area code
    while ($row = $statement->fetch()) {
        echo "<p>
            Placed In: $row[placedIn]<br>
            Initial Date: $row[initialDate]<br>
            Total Cost: $$row[totalCost]<br>
            Area Code: $row[areaCode]<br>
            <hr>
            </p>";
    }

    
   
    $mysqli->close();
    
?>