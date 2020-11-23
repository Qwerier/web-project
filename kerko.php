<?php
 session_start();
 include "lidhjaDB.php";
 ?>

<html>
    <head>
        <title>Kerko</title>
        <link rel="stylesheet" type="text/css" href="kerko.css">
        <link rel="stylesheet" type="text/css" href="designwebpage.css">
    </head>

    <body>

      <h3>Hapesire kerkimi</h3>
      <p></p>
      <h4>Ketu shfaqen rezultatet e kerkimit tuaj</h4>


        <?php
          if(isset($_GET['Kategoria'])){
            
            $query2 = "SELECT * FROM lib_kat
            INNER JOIN lib_klas
            ON lib_kat.ID_Kat = lib_klas.ID_Kat
            INNER JOIN lib_pershkrim
            ON lib_klas.Nr_Seri = lib_pershkrim.Nr_Seri";
            $result2 = mysqli_query($conn,$query2);

            echo "<table>
   <thead>
     <th>Figura</th>
     <th>Titulli</th>
     <th>Pershkrimi</th>
     <th></th>
   </thead>
   <tbody>";

            while($row = mysqli_fetch_array($result2)){
                if($row[1]==$_GET['Kategoria']){
                   echo  "<td>";
                   echo  "<img src='$row[12]' width = '180px' height = '180px'>";
                   echo "<td>";
                   echo $row[5];
                   echo "</td> <td>";
                   echo $row[6];
                   echo "</td> <td>";
                   echo "<a href='produkt.php?Nr_Seri=$row[3]' id='$row[3]' target='_blank'> Me shume</a>";
                   echo "</td> <tr>";
                }
            }
            echo "</tbody> </table>";
              

          }
          else{
           echo '<form action="kerko.php" method="GET">
            <img src="mag.png" width="100px" height="100px">
            <label>Kerkim </label><input type="text" name="kerkimiKat">
            <input type="submit" name="submite" value="Kerko">
           </form>';
          if(isset($_GET['submite'])){

            if(isset($_GET['kerkimiKat'])){

            $parameter = $_GET['kerkimiKat'];

            $query1 = "SELECT * FROM lib_kat
            INNER JOIN lib_klas
            ON lib_kat.ID_Kat = lib_klas.ID_Kat
            INNER JOIN lib_pershkrim
            ON lib_klas.Nr_Seri = lib_pershkrim.Nr_Seri
            INNER JOIN lib_aut_klas
            ON lib_pershkrim.Nr_Seri = lib_aut_klas.Nr_Seri
            INNER JOIN lib_autor
            ON lib_aut_klas.ID_Autor = lib_autor.ID_Autor
            WHERE Kategoria LIKE '%$parameter%'
            OR titulli LIKE '%$parameter%'
            OR Botuesi LIKE '%$parameter%'
            OR Emri LIKE '%$parameter%'
            OR Pershkrimi LIKE '%$parameter%';";

            $result1 = mysqli_query($conn,$query1);
            if(mysqli_num_rows($result1) == 0){
                echo "<script> alert('Nuk ka asnje liber me kete fjale');</script>";
            }
            
            $memory = "";
            
            
            echo "<table>
   <thead>
     <th>Figura</th>
     <th>Kategoria</th>
     <th>Titulli</th>
     <th>Autoret</th>
     <th>Pershkrimi</th>
     <th></th>
   </thead>
   <tbody>";

            while($row = mysqli_fetch_array($result1)){

                if($row[5] == $memory){
                   $memory = $row[5];
                }
                else{
                   echo  "<td>";
                   echo  "<img src='$row[12]' width = '180px' height = '180px'>";
                   echo "</td><td>";
                   echo $row[1];
                   echo "</td> <td>";
                   echo $row[5];
                   echo "</td> <td>";

                   $query2 = "SELECT * FROM lib_aut_klas
                   INNER JOIN lib_autor 
                   ON lib_aut_klas.ID_Autor = lib_autor.ID_Autor";
                   $result2 = mysqli_query($conn,$query2);

                   while($rowe = mysqli_fetch_array($result2)){
                    if($rowe[0]==$row[3]){
                        echo "$rowe[3] ";
                        echo "$rowe[4]";
                        echo "<br>";
                    }
                  }
                   echo "</td><td>";
                   echo $row[6];
                   echo "</td> <td>";
                   echo "<a href='produkt.php?Nr_Seri=$row[3]' id='$row[3]' target='_blank'> Me shume</a>";
                   echo "</td> <tr>";
                    
                }
                
                $memory = $row[5];
            }

           }         
        
        }
    }
        ?>
        

        <div>

        </div>
        
        
    </body>
</html>