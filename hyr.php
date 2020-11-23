<?php
   include "lidhjaDB.php";
   
?>

<html>
    <head>
        <title>Hyr ne llogari</title>
        <link rel="stylesheet" style="text/css" href="hyr.css">
    </head>

    <body>
      <img src="logua.bmp" width="150px" height="150px">
       <h3>Plotesoni te dhenat e meposhtme per te hyre ne platforme</h3>
        <form action="hyr.php" method="POST">
            <div>
            <p></p>
            <label>Email :</label><input type="email" name="hemail" autocomplete="off">
            <p></p>
            <label>Fjalekalimi :</label><input type="password" name = "hpassword">
            <p></p>
            <input type="submit" name="hsubmit" value="Hyr">
            </div>
        </form>

        <?php
           session_start();
           if(isset($_POST['hsubmit']))
             {
               $hemail = $_POST['hemail'];
               $hpassword = $_POST['hpassword'];
                
               $verify = "SELECT * FROM klienti WHERE Email='$hemail' AND Fjalekalimi='$hpassword'";
               $result = mysqli_query($conn,$verify);

                 if(mysqli_num_rows($result)==0){
                    echo "<p> Llogaria nuk ekziston </p>";
                    echo "<a href = 'regjistrohu.php'> Klikoni ketu per tu regjistruar<a>";
                 }
                 else{

                    $rowe = mysqli_fetch_assoc($result);
                    $_SESSION['Emri'] = $rowe['Emri'];
                    $_SESSION['Mbiemri'] = $rowe['Mbiemri'];
                    $_SESSION['ID'] = $rowe['ID_Klient'];
                    echo  "<script> window.location.assign('index.php');</script>";
                 }
               }
            
        ?>
    </body>
</html>