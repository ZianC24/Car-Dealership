<?php
  include "getSoldVINs.php";
  include "getColorUsedCars.php";
?>

<!DOCTYPE html>
<html lang="en-US">
  <head>
  <style>
    .split {
      height: 95%;
      width: 100%;
      position: fixed;
      z-index: 1;
      top: 0;
      
    }

    .bottom {
      top:50%;
      left:50%;
      transform: translate(-50%, -35%);
      background-color:#46494C;
    }
  </style>
  </head>

<body style="background-color:#dcdcdd">

  <h1 style="position:absolute; margin-left:80vh; color:#4c5c68; font-size:50px"> Car Dealership</h1>
  
  <div class="split bottom">
  <!-- table options -->
  <div style="text-align:center; position:absolute; top:33vh; margin-left:59vh">  
    
    <fieldset style="width:23vh; background-color:#4C5C68"> 
      <legend style="text-align:center; font-size:.9vw; background-color:#1985A1; padding: 5px 10px; color:white"> Table Options </legend>
      <br>  
      <!-- Display Cars -->
      <form action="/showTables/displayCars.php">
        <input style="width:13vh; font-size:.7vw; background-color:#DCDCDD" title="Show All Cars"
              type="submit" value="New/Used Cars">
      </form>
      <br>

      <!-- Display Salespeople -->
      <form action="/showTables/displaySalespeople.php">
        <input title="Show Salespeople" style="background-color:#DCDCDD; width:13vh; font-size:.7vw"
              type="submit" value="Salespeople">
      </form>
      <br>

      <!-- Display Car Sales -->
      <form action="/showTables/displayCarSales.php">
        <input title="Show Sales" style="background-color:#DCDCDD; width:13vh; font-size:.7vw"
              type="submit" value="Car Sales">
      </form>
      <br>

      <!-- Display Car ads -->
      <form action="/showTables/displayCarAd.php">
        <input title="Show Ads" style="background-color:#DCDCDD; width:13vh; font-size:.7vw"
              type="submit" value="Car Ads">
      </form>
      <br>

      <!-- Display Customers -->
      <form action="/showTables/displayCustomers.php">
        <input title="Show Customers" style="background-color:#DCDCDD; width:13vh; font-size:.7vw"
              type="submit" value="Customers">
      </form>
      <br>
    </fieldset>
    <br>
  </div>


  <!-- Insert into CarNewCar -->
  <form style="position:absolute; top:10vh; margin-left:15vh;" action="/actions/insert.html">
    <input style="font-size:.9vw; width:23vh; background-color:#1985A1; color:white" title="Insert"
          type="submit" value="Insert New Car"/>
  </form>
  <br>

  <!-- Delete Car -->
  <form style="position:absolute; top:10vh; margin-left:60vh" action="/actions/delete.html">
    <input title="Delete" style="font-size:.9vw; background-color:#1985A1; color:white; width:23vh"
          type="submit" value="Delete Car">
  </form>
  <br>

  <!-- Rating -->
  <form action="/queries/ratings.php" style="position:absolute; top:10vh; margin-left:105vh">
    <input title="Serch Ratings" style="background-color:mintcream; width:23vh; background-color:#1985A1; color:white; font-size:.9vw"
          type="submit" value="Sales Rating">
  </form>
  <br>

  <!-- Custom items -->
  <form action="/queries/customItems.php" style="position:absolute; top:10vh; margin-left:150vh">
    <input title="Search Customized Vehicles" style="background-color:#1985A1; color:white; width:23vh; font-size:.9vw"
          type="submit" value="Customized Vehicles">
  </form>
  <br>

  <div style="position:absolute; margin-left:105vh; top:33vh; text-align:center">
    <!-- Show Car sales -->
    <form action="/queries/searchCarSales.php" method="POST">
      <fieldset style="width:23vh; background-color:#4C5C68; border-style:ridge">
      <legend style="text-align:center; background-color:#1985A1; font-size:.9vw; padding: 5px 10px; color:white"> Search Sales</legend>
      <br>
        <label>Select VIN</label>
        <select name="carVIN"> 
          <option value="none" selected disabled hidden>Select an Option</option>
          <?php foreach($resultSet as $row){ ?>
          <option name="<?php $row?>"> <?php echo "$row"; ?> </option>
          <?php } ?>
        
        </select>
        <input style="background-color:mintcream" type="submit" value="Search">
      </fieldset>
    </form>
    <br>

    <!-- Search Used Cars -->
    <form action="/queries/searchUsed.php" method="POST" >
      <fieldset style="width:23vh; background-color:#4C5C68; border-style:ridge">
      <legend style="text-align:center; background-color:#1985A1; font-size:.9vw; padding: 5px 10px; color:white"> Search Used Cars </legend>
      <br>
        <label> Enter Max Mileage:</label>
        <input title="Mileage" name="mileage" id="mileage" type="number" min="0" max="16777215" step="500" value="0">
        <br><br>
        <label> Select Desired Color:</label>
        <select name="color">
          <option color="none" selected disabled hidden></option>
          <option color="Black">Black</option>
          <option color="white">White</option>
          <option color="Silver">Silver</option>
          <option color="Grey">Grey</option>
          <option color="Blue">Blue</option>
          <option color="Red">Red</option>
          <option color="Purple">Purple</option>
          <option color="Green">Green</option>
          <option color="Brown">Brown</option>
          <option color="Yellow">Yellow</option>
          <option color="Pink">Pink</option>
        </select>
        <input type="submit" value="Search">
      </fieldset>
    </form>
    <br>
    
    <!-- Warentee search --> 
    <form action="/queries/warrantee.php" method="POST">
      <fieldset style="width:23vh; background-color:#4C5C68; border-style:ridge;">
      <legend style="text-align:center; background-color:#1985A1; font-size:.9vw; padding: 5px 10px; color:white"> Search Warrantee Type </legend>
        <br>
        <label>Enter Max Price:</label>
        <input type="number" id="price" name="price" min="0" max="5000" step="250">
        <br><br>
        <label>Enter Period Number:</label>
        <input type="number" id="period" name="period" min="0" max="100">
        <input type="submit" text="Search" title="Warrantee Search">
      </fieldset>

    </form>
    <br>
  </div>


          </div>
</body>
</html>