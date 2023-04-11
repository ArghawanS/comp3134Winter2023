<form method="GET">
    <input type = "text" name = "input">
    <input type = "submit" name = "submit" value="Submit">
</form>

<?php
$con=mysqli_connect("localhost","user","user","interface");

if (mysqli_connect_errno())
    echo "Failed to connect to the database: " . mysqli_connect_error();

if (isset($_GET["submit"])){
   $result=mysqli_query($con, "SELECT * FROM users WHERE firstname LIKE '" . $_GET['input'] . "' AND active LIKE 1");
    echo "<table border='2' cellspacing='10'>
    <tr>
    <th>First Name</th>
    <th>Last Name</th>
    </tr>";

    while($row = mysqli_fetch_array($result))
    {
    echo "<tr>";
    echo "<td>" . $row['firstname'] . "</td>";
    echo "<td>" . $row['lastname'] . "</td>";
    echo "</tr>";
    }
    echo "</table>";
}
mysqli_close($con);

?>


