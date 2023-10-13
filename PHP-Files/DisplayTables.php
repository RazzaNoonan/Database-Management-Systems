

<!DOCTYPE html>
<html>
	<head>
		<title>Php Animal Table</title>
	</head>	

	<body>

    <!-- -------------------------------------------------------------------------------------------------------------------------------------------------- -->
    <table>
    <h2>Animal Table</h2>
    <h4>Select animalNum, petOwnersNum, medicationNum, foodNum, name, breed, gender, address, appointmentNum, DOB, weight, billId, animalImage, Picture_Path  from AnimalDetails </h4>

            
                <table border="1">
                    <tr>
                     <td>
                            <h2>animalNum</h2>
                        </td>
                        <td>
                            <h2>petOwnersNum</h2>
                        </td>
                        <td>
                            <h2>medicationNum</h2>
                        </td>
                        <td>
                            <h2>foodNum</h2>
                        </td>
                        <td>
                            <h2>name</h2>
                        </td>
                        <td>
                            <h2>breed</h2>
                        </td>
                        <td>
                            <h2>gender</h2>
                        </td>
                        <td>
                            <h2>address</h2>
                        </td>
                        <td>
                            <h2>appointmentNum</h2>
                        </td>
                        <td>
                            <h2>DOB</h2>
                        </td>
                        <td>
                            <h2>weight</h2>
                        </td>
                        <td>
                            <h2>animalImage</h2>
                        </td>
                        <td>
                            <h2>Picture_Path</h2>
                        </td>
                        
                    

                    </tr>
            <?php
                    include 'dbConfig.php';

                    $query = "SELECT animalNum, petOwnersNum, medicationNum, foodNum, name, breed, gender, address, appointmentNum, DOB, weight, billId, animalImage, Picture_Path  from AnimalDetails";

                    $connect = mysqli_connect($host, $username, $password, $database) or die("Problem connecting.");
                    $result = mysqli_query($connect, $query) or die("Bad Query.");
                    mysqli_close($connect);

                    while ($row = $result->fetch_array()) {
                        echo "<tr>";
                        echo "<td><h2>" . $row['animalNum'] . "</h2></td>";
                        echo "<td><h2>" . $row['petOwnersNum'] . "</h2></td>";
                        echo "<td><h2>" . $row['medicationNum'] . "</h2></td>";
                        echo "<td><h2>" . $row['foodNum'] . "</h2></td>";
                        echo "<td><h2>" . $row['name'] . "</h2></td>";
                        echo "<td><h2>" . $row['breed'] . "</h2></td>";
                        echo "<td><h2>" . $row['gender'] . "</h2></td>";
                        echo "<td><h2>" . $row['address'] . "</h2></td>";
                        echo "<td><h2>" . $row['appointmentNum'] . "</h2></td>";
                        echo "<td><h2>" . $row['DOB'] . "</h2></td>";
                        echo "<td><h2>" . $row['weight'] . "</h2></td>";
                        echo "<td><h2>" . $row['animalImage'] . "</h2></td>";
                        echo "<td><h2>" . $row['Picture_Path'] . "</h2></td>";
                        echo "</tr>";
                    }
                    ?>
                </table>
            </table>
            
    <table>
    <h2>Appointment Table</h2>
    <h4>Select appointmentNum, medicationNum, staffNum, appointmentDateTime, location, vet, symptoms, diagnosis , medication  from appointment </h4>

            
                <table border="1">
                    <tr>
                     <td>
                            <h2>appointmentNum</h2>
                        </td>
                        <td>
                            <h2>medicationNum</h2>
                        </td>
                        <td>
                            <h2>staffNum</h2>
                        </td>
                        <td>
                            <h2>appointmentDateTime</h2>
                        </td>
                        <td>
                            <h2>location</h2>
                        </td>
                        <td>
                            <h2>vet</h2>
                        </td>
                        <td>
                            <h2>symptoms</h2>
                        </td>
                        <td>
                            <h2>diagnosis</h2>
                        </td>
                        <td>
                            <h2>medication</h2>
                        </td>
                    </tr>
            <?php
                    include 'dbConfig.php';

                    $query = "SELECT appointmentNum, medicationNum, staffNum, appointmentDateTime, location, vet, symptoms, diagnosis , medication  from appointment";

                    $connect = mysqli_connect($host, $username, $password, $database) or die("Problem connecting.");
                    $result = mysqli_query($connect, $query) or die("Bad Query.");
                    mysqli_close($connect);

                    while ($row = $result->fetch_array()) {
                        echo "<tr>";
                        echo "<td><h2>" . $row['appointmentNum'] . "</h2></td>";
                        echo "<td><h2>" . $row['medicationNum'] . "</h2></td>";
                        echo "<td><h2>" . $row['staffNum'] . "</h2></td>";
                        echo "<td><h2>" . $row['appointmentDateTime'] . "</h2></td>";
                        echo "<td><h2>" . $row['location'] . "</h2></td>";
                        echo "<td><h2>" . $row['vet'] . "</h2></td>";
                        echo "<td><h2>" . $row['symptoms'] . "</h2></td>";
                        echo "<td><h2>" . $row['diagnosis'] . "</h2></td>";
                        echo "<td><h2>" . $row['medication'] . "</h2></td>";
                        echo "</tr>";
                    }
                    ?>
                </table>
            </table>

    <table>        
    <h2>billing Table</h2>
    <h4>Select billId, name, appDate, method, paymentStatus, cost from billing </h4>

            
                <table border="1">
                    <tr>
                     <td>
                            <h2>billId</h2>
                        </td>
                        <td>
                            <h2>name</h2>
                        </td>
                        <td>
                            <h2>appDate</h2>
                        </td>
                        <td>
                            <h2>method</h2>
                        </td>
                        <td>
                            <h2>paymentStatus</h2>
                        </td>
                        <td>
                            <h2>cost</h2>
                        </td>
                    </tr>
            <?php
                    include 'dbConfig.php';

                    $query = "SELECT billId, name, appDate, method, paymentStatus, cost from billing";

                    $connect = mysqli_connect($host, $username, $password, $database) or die("Problem connecting.");
                    $result = mysqli_query($connect, $query) or die("Bad Query.");
                    mysqli_close($connect);

                    while ($row = $result->fetch_array()) {
                        echo "<tr>";
                        echo "<td><h2>" . $row['billId'] . "</h2></td>";
                        echo "<td><h2>" . $row['name'] . "</h2></td>";
                        echo "<td><h2>" . $row['appDate'] . "</h2></td>";
                        echo "<td><h2>" . $row['method'] . "</h2></td>";
                        echo "<td><h2>" . $row['paymentStatus'] . "</h2></td>";
                        echo "<td><h2>" . $row['cost'] . "</h2></td>";
                        echo "</tr>";
                    }
                    ?>
                </table>
            </table>


            <table>
            <h2>petOwners Table</h2>
    <h4>Select petOwnersNum, name, address, ccDetails, pets, petOwnerImage, Picture_Path from petOwners </h4>

            
                <table border="1">
                    <tr>
                     <td>
                            <h2>petOwnersNum</h2>
                        </td>
                        <td>
                            <h2>name</h2>
                        </td>
                        <td>
                            <h2>address</h2>
                        </td>
                        <td>
                            <h2>ccDetails</h2>
                        </td>
                        <td>
                            <h2>pets</h2>
                        </td>
                        <td>
                            <h2>petOwnerImage</h2>
                        </td>
                        <td>
                            <h2>Picture_Path</h2>
                        </td>
                    </tr>
            <?php
                    include 'dbConfig.php';

                    $query = "SELECT petOwnersNum, name, address, ccDetails, pets, petOwnerImage, Picture_Path from petOwners";

                    $connect = mysqli_connect($host, $username, $password, $database) or die("Problem connecting.");
                    $result = mysqli_query($connect, $query) or die("Bad Query.");
                    mysqli_close($connect);

                    while ($row = $result->fetch_array()) {
                        echo "<tr>";
                        echo "<td><h2>" . $row['petOwnersNum'] . "</h2></td>";
                        echo "<td><h2>" . $row['name'] . "</h2></td>";
                        echo "<td><h2>" . $row['address'] . "</h2></td>";
                        echo "<td><h2>" . $row['ccDetails'] . "</h2></td>";
                        echo "<td><h2>" . $row['pets'] . "</h2></td>";
                        echo "<td><h2>" . $row['petOwnerImage'] . "</h2></td>";
                        echo "<td><h2>" . $row['Picture_Path'] . "</h2></td>";
                        echo "</tr>";
                    }
                    ?>
                </table>
            </table>

            
        <table>
        <h2>staff Table</h2>
        <h4>Select staffNum, name, address, bio, salary, iban, staffImage, Picture_Path from staff </h4>

            
                <table border="1">
                    <tr>
                     <td>
                            <h2>staffNum</h2>
                        </td>
                        <td>
                            <h2>name</h2>
                        </td>
                        <td>
                            <h2>address</h2>
                        </td>
                        <td>
                            <h2>bio</h2>
                        </td>
                        <td>
                            <h2>salary</h2>
                        </td>
                        <td>
                            <h2>iban</h2>
                        </td>
                        <td>
                            <h2>staffImage</h2>
                        </td>
                        <td>
                            <h2>Picture_Path</h2>
                        </td>
                    </tr>
            <?php
                    include 'dbConfig.php';

                    $query = "SELECT staffNum, name, address, bio, salary, iban, staffImage, Picture_Path from staff";

                    $connect = mysqli_connect($host, $username, $password, $database) or die("Problem connecting.");
                    $result = mysqli_query($connect, $query) or die("Bad Query.");
                    mysqli_close($connect);

                    while ($row = $result->fetch_array()) {
                        echo "<tr>";
                        echo "<td><h2>" . $row['staffNum'] . "</h2></td>";
                        echo "<td><h2>" . $row['name'] . "</h2></td>";
                        echo "<td><h2>" . $row['address'] . "</h2></td>";
                        echo "<td><h2>" . $row['bio'] . "</h2></td>";
                        echo "<td><h2>" . $row['salary'] . "</h2></td>";
                        echo "<td><h2>" . $row['iban'] . "</h2></td>";
                        echo "<td><h2>" . $row['staffImage'] . "</h2></td>";
                        echo "<td><h2>" . $row['Picture_Path'] . "</h2></td>";
                        echo "</tr>";
                    }
                    ?>
                </table>
            </table>

            <table>
        <h2>food Table</h2>
        <h4>Select foodNum, foodType, suplier, sizeFood, price, QuantityinStock, foodImage, Picture_Path from food </h4>

            
                <table border="1">
                    <tr>
                     <td>
                            <h2>foodNum</h2>
                        </td>
                        <td>
                            <h2>foodType</h2>
                        </td>
                        <td>
                            <h2>suplier</h2>
                        </td>
                        <td>
                            <h2>sizeFood</h2>
                        </td>
                        <td>
                            <h2>price</h2>
                        </td>
                        <td>
                            <h2>QuantityinStock</h2>
                        </td>
                        <td>
                            <h2>foodImage</h2>
                        </td>
                        <td>
                            <h2>Picture_Path</h2>
                        </td>
                    </tr>
            <?php
                    include 'dbConfig.php';

                    $query = "SELECT foodNum, foodType, suplier, sizeFood, price, QuantityinStock, foodImage, Picture_Path from food";

                    $connect = mysqli_connect($host, $username, $password, $database) or die("Problem connecting.");
                    $result = mysqli_query($connect, $query) or die("Bad Query.");
                    mysqli_close($connect);

                    while ($row = $result->fetch_array()) {
                        echo "<tr>";
                        echo "<td><h2>" . $row['foodNum'] . "</h2></td>";
                        echo "<td><h2>" . $row['foodType'] . "</h2></td>";
                        echo "<td><h2>" . $row['suplier'] . "</h2></td>";
                        echo "<td><h2>" . $row['sizeFood'] . "</h2></td>";
                        echo "<td><h2>" . $row['price'] . "</h2></td>";
                        echo "<td><h2>" . $row['QuantityinStock'] . "</h2></td>";
                        echo "<td><h2>" . $row['foodImage'] . "</h2></td>";
                        echo "<td><h2>" . $row['Picture_Path'] . "</h2></td>";
                        echo "</tr>";
                    }
                    ?>
                </table>
            </table>
           
            <table>
        <h2>food Table</h2>
        <h4>Select medicationNum, name, description, price, cause from medication </h4>

            
                <table border="1">
                    <tr>
                        <td>
                            <h2>medicationNum</h2>
                        </td>
                        <td>
                            <h2>name</h2>
                        </td>
                        <td>
                            <h2>description</h2>
                        </td>
                        <td>
                            <h2>price</h2>
                        </td>
                        <td>
                            <h2>cause</h2>
                        </td>
                    </tr>
            <?php
                    include 'dbConfig.php';

                    $query = "SELECT medicationNum, name, description, price, cause from medication";

                    $connect = mysqli_connect($host, $username, $password, $database) or die("Problem connecting.");
                    $result = mysqli_query($connect, $query) or die("Bad Query.");
                    mysqli_close($connect);

                    while ($row = $result->fetch_array()) {
                        echo "<tr>";
                        echo "<td><h2>" . $row['medicationNum'] . "</h2></td>";
                        echo "<td><h2>" . $row['name'] . "</h2></td>";
                        echo "<td><h2>" . $row['description'] . "</h2></td>";
                        echo "<td><h2>" . $row['price'] . "</h2></td>";
                        echo "<td><h2>" . $row['cause'] . "</h2></td>";
                        echo "</tr>";
                    }
                    ?>
                </table>
            </table>
        </body>
    </html>
