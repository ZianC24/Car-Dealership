<!DOCTYPE html>
<html lang="en-US"> 

    <body>
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
            echo "<h4>Cars Sales People Table:</h4>";
        } 
        catch (PDOException $e) {
            echo "Connection failed: " . $e->getMessage();

        }

        $sql = "SELECT empId, firstName, lastName, officePhoneNumber FROM CarSalesperson";
        $statement = $pdo->prepare($sql);
        $statement->execute();

        // show VIN number, make, model and color for all cars 
        // UNION 
        while ($row = $statement->fetch()) {
            echo "<p>
                Employee ID: $row[empId]<br>
                Name: $row[firstName] $row[lastName]<br>
                Office Number: $row[officePhoneNumber]<br>
                <hr>
                </p>";
        }



        $mysqli->close();

        ?>
    </body>

</html>

