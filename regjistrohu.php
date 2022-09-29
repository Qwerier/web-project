<?php
  include "LidhjaDB.php";
  $timestamp = date("YmdHis");
?>

<html>
    <head>
        <title> Regjistrohu</title>
        <link rel="stylesheet" style="text/css" href="regjistrohu.css?v=<?php echo "$timestamp";?>">
        
    </head>

    <body>
      
     <img src="img_page\\logua.bmp" width="150px" height="150px">
      <h3>Plotesoni te dhenat e meposhtme per tu regjistruar</h3>
        <form action="regjistrohu.php" method="POST" autocomplete="off">

            <label>Emri :</label><input type="text" name="emri" maxlength="20">
            <p></p>
            <label>Mbiemri :</label><input type="text" name="mbiemri" maxlength="20">
            <p></p>
            <label>Email :</label><input type="email" name="email" placeholder="example@adress.com">
            <p></p>
            <label>Fjalekalimi :</label><input type="password" name="fjalekalimi">
            <p></p>
            <label>Adresa :</label><input type="text" name="adresa">
            <p></p>
            <label>Qyteti :</label><input type="text" name="qyteti">
            <p></p>
            <label>Shteti :</label><input type="text" name="shteti" maxlength="2">
            <p></p>
            <label>Kodi Postar:</label><input type="text" name="kodiPostar" maxlength="5">
             <p></p>
            <input type="submit" name="submit" value="Regjistrohu">
        </form>
        <?php
          if(isset($_POST['submit']) && !empty($_POST['emri'])){
             $name = $_POST['emri'];
             $surname = $_POST['mbiemri'];
             $email = $_POST['email'];
             $password = $_POST['fjalekalimi'];
             $adress = $_POST['adresa'];
             $city = $_POST['qyteti'];
             $state = $_POST['shteti'];
             $zipCode = $_POST['kodiPostar'];

             $email_security = "SELECT Email FROM klienti WHERE Email='$email'";
             $result= mysqli_query($conn,$email_security);

             if(mysqli_num_rows($result) ==0){

              $query = "INSERT INTO klienti(Emri,Mbiemri,Email,Fjalekalimi,Adresa,Qyteti,Shteti,Kodi_postar) VALUES ('$name','$surname','$email','$password','$adress','$city','$state','$zipCode')";
              mysqli_query($conn,$query);
              echo "<p> Ju u regjistruat me sukses</p>";
              echo  "<script> window.location.assign('hyr.php');</script>";
             }
             else
               echo "Ju jeni regjistruar me pare!";
               echo "<p><a href= 'index.php'>Klikoni ketu per te hyre ne llogarine tuaj</a> </p>";
            }
            
        ?>
    </body>
</html>
