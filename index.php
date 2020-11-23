<?php
  include "lidhjaDB.php";
  $timestamp = date("YmdHis");
  session_start();
?>
<html>
 <head>
   <title>Faqja Kryesore</title>
   <link rel="stylesheet" style="text/css" href="designwebpage.css?v=<?php echo "$timestamp";?>">
   <script src="menuja.js"></script>
   
 </head>

 <body>
    
     <header>
        
        <div class="container">
         <img class="logo" src="logua.bmp" width="150px" height="150px">
         
         <h2> Bibliophile</h2>
        <nav>
           <?php
            if(isset($_SESSION['Emri'])){

              echo $_SESSION['Emri'];
              echo "  ";
              echo $_SESSION['Mbiemri'];
            } 
           ?>
         <ul>
          
          <?php

          if(isset($_SESSION['Emri']) )
            echo "<li><a href='shporta.php'>Shporta</a></li>";
          
          if(isset($_SESSION['Emri']) )
            echo "<li><a href='hyr.php'>Dil</a></li>";
          else if(!isset($_SESSION['Emri']) )
            echo "<li><a href='hyr.php'>Hyr</a></li>";

    
          ?>
          
         </ul> 
        
        </nav>
        </div>

     </header>

     <div class="tes">

        <menu>
          <ul>
            <li  id="faqja"> <a>Faqja Kryesore</a> </li>
            <li id="rreth" > <a>Rreth platformes</a></li>
            <li id="menyja"> <a href="kerko.php">Menyja e shfletimit</a>
              <ol>
              <?php
              $query = "SELECT distinct(Kategoria) FROM lib_kat
              INNER JOIN lib_klas
              ON lib_klas.ID_Kat = lib_kat.ID_Kat";

              $resultSet = mysqli_query($conn,$query);

              while($row = mysqli_fetch_array($resultSet))
              {
              ?>
             <li><a  href="kerko.php?Kategoria=<?php echo $row[0]?>"><?php echo $row[0];?></a></li>
             <?php
            } ?>
             </li>
             </ol>
       

          </ul>
        </menu>
        
        
        <p></p>
        <script>
          for(var i=0; i<15;i++){
            document.write("<br>");
          }
        </script>

<table>
   <thead>
     <th>Figura</th>
     <th>Titulli</th>
     <th>Pershkrimi</th>
     <th></th>
   </thead>
   <tbody>
<?php
              $quer = "SELECT * FROM lib_pershkrim
              ORDER BY RAND()
              LIMIT 3";

              $results_display = mysqli_query($conn,$quer);
               
              while( $rowe = mysqli_fetch_array($results_display)){
                   echo  "<td>";
                   echo  "<img src='$rowe[8]' width = '180px' height = '180px'>";
                   echo "<td>";
                   echo $rowe[1];
                   echo "</td> <td>";
                   echo $rowe[2];
                   echo "</td> <td>";
                   echo "<a href='produkt.php?Nr_Seri=$rowe[0]' id='$rowe[0]' target='_blank'> Me shume</a>";
                   echo "</td> <tr>";
                   
              }
?>
</tbody>
</table>
        
        <p>
        <footer>
          <h4>Ne kete seksion do te gjeni linket e nevojshme per te naviguar faqen</h4>
          <a href="regjistrohu.php">Kliko ketu per tu regjistruar</a>
          <p></p>
          <a href="hyr.php">kliko ketu per te hyre ne platforme</a>
        </footer>
        </p>
    </div>
 </body>

</html>