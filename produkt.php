<?php 
session_start();
include "lidhjaDB.php";
?>

<html>
    <head>
       <title>Produkti</title>
       <link rel="stylesheet" type="text/css" href="prove.css">
       <style>
           body{
               background-image: url(libraria.jpg);
           }
           table{
               color: white;
               margin-top: 200px;
               opacity: 0.6;
               background-color: black; 
               font-size: 20px;
           }
           </style>
    </head>

    <body>
       <div>
           <table>
               <thead>
                   <th>Titulli</th>
                   <th>Autori/et</th>
                   <th>Seria</th>
                   <th>Cmimi</th>
                   <th>Pershkrimi</th>
               </thead>
        <tbody>
          <?php
             $parameter = $_GET['Nr_Seri'];
             $query = "SELECT * FROM lib_pershkrim WHERE Nr_Seri='$parameter'";
             $result = mysqli_query($conn,$query);

             $query2 = "SELECT * FROM lib_aut_klas
             INNER JOIN lib_autor 
             ON lib_aut_klas.ID_Autor = lib_autor.ID_Autor";
             $result2 = mysqli_query($conn,$query2);

             while($row = mysqli_fetch_array($result)){
                echo  "<td>";
                echo  "$row[1]";
                echo "</td><td>";
                while($rowe = mysqli_fetch_array($result2)){
                    if($rowe[0]==$parameter){
                        echo "$rowe[3] ";
                        echo "$rowe[4]";
                        echo "<br>";
                    }
                }
                echo "</td> <td> ";
                echo $row[0];
                echo "</td><td>";
                echo "$row[3] $";
                echo "</td> <td>";
                echo $row[2];
                echo "</td> <tr>";
             }

          ?> 
          </tbody>
        </table>
       </div>
    </body>
    
</html>