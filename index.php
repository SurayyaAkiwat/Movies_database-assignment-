<html>
<head>
<title>
display movie details
</title>
</head>
<body bgcolor="#b8beff">
<h1 align="center"> Displaying all data from movies table
</h1>
<br>
<?php
include_once 'connect.php';
echo "<div align='center'>";
echo "<table border='1px solid black'>
<tr><td><b>id</b></td>
<td><b>Movie Name</b></td>
<td><b>Lead Actor</b></td>
<td><b>Lead Actress</b></td>
<td><b>Director</b></td>
<td><b>Year of Release</b></td>
</tr>";
$fetchqry1 =  "SELECT * FROM `movies`; "; 
$result1 = mysqli_query($con,$fetchqry1);
$storeArray = Array();
if(mysqli_num_rows($result1) > 0){
while ($row1 = mysqli_fetch_array($result1, MYSQLI_ASSOC)){

                  echo "<tr>";
                  echo "<td>" . $row1['id'] . "</td>";
                  echo "<td>" . $row1['movie_name'] . "</td>";
                  echo "<td>" . $row1['lead_actor'] . "</td>";
                  echo "<td>" . $row1['lead_actress'] . "</td>";
                  echo "<td>" . $row1['director'] . "</td>";
                  echo "<td>" . $row1['year_of_release'] . "</td>";
                  echo "</tr>";
            }
echo "</table>";
echo"</div>";
      }
else{
            echo "No Records Found!";
       }

echo "<br><h2 align='center'>Displaying movie details based on the actor's name</h2><p align='center'>(Here Chadwick Boseman)</p>";
echo "<div align='center'>";
echo "<table border='1px solid black'>
<td><b>Movie Name</b></td>
<td><b>Lead Actor</b></td>
<td><b>Year of Release</b></td>
</tr>";
$fetchqry2 = "SELECT `movie_name`,`lead_actor`, `year_of_release` FROM `movies` WHERE `lead_actor`='Chadwick Boseman' ; ";
$result2 = mysqli_query($con,$fetchqry2);
$storeArray = Array();
if(mysqli_num_rows($result2) > 0){
while ($row2 = mysqli_fetch_array($result2, MYSQLI_ASSOC)){
                  echo "<tr>";
                  echo "<td>" . $row2['movie_name'] . "</td>";
                  echo "<td>" . $row2['lead_actor'] . "</td>";
                  echo "<td>" . $row2['year_of_release'] . "</td>";
                  echo "</tr>";
      }
echo "</table>";
echo"</div>";
}
else{
            echo "No Records Found!";
      }

?>

</body>
</html>