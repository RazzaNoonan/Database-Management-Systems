

<!DOCTYPE html>
<html>
	<head>
		<title>Joining Appointment and Staff Table</title>
	</head>	

	<body>

    <table>
    <h2>Appointment and Staff Table</h2>
    <h4>select appointmentNum,name,address,bio
                     from (SELECT appointmentNum, medicationNum, staffNum, appointmentDateTime, location, vet, symptoms, diagnosis , medication  from appointment) app
                    inner join
                    (SELECT staffNum, name, address, bio, salary, iban, staffImage, Picture_Path from staff) staff
                    on app.staffnum=staff.staffnum </h4>

            
                <table border="1">
                    <tr>
                     <td>
                            <h2>appointmentNum</h2>
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
                    </tr>
            <?php
                    include 'dbConfig.php';

                    $query = "SELECT appointmentNum,name,address,bio
                     from (SELECT appointmentNum, medicationNum, staffNum, appointmentDateTime, location, vet, symptoms, diagnosis , medication  from appointment) app
                    inner join
                    (SELECT staffNum, name, address, bio, salary, iban, staffImage, Picture_Path from staff) staff
                    on app.staffnum=staff.staffnum";

                    $connect = mysqli_connect($host, $username, $password, $database) or die("Problem connecting.");
                    $result = mysqli_query($connect, $query) or die("Bad Query.");
                    mysqli_close($connect);

                    while ($row = $result->fetch_array()) {
                        echo "<tr>";
                        echo "<td><h2>" . $row['appointmentNum'] . "</h2></td>";
                        echo "<td><h2>" . $row['name'] . "</h2></td>";
                        echo "<td><h2>" . $row['address'] . "</h2></td>";
                        echo "<td><h2>" . $row['bio'] . "</h2></td>";
                        echo "</tr>";
                    }
                    ?>
                </table>
            </table>
              
    </body>
</html>
