<!DOCTYPE html>
<html lang="English">
<head>
    <style>
        .header {
            background-color: #4472C4;
            padding: 20px;
            text-align: center;
        }

        body {
            margin: 0;
        }
        .buttonLogOut {
            background-color: lightblue;
            padding: 3px 8px;
            margin-right: 100%;
        }
        .PersonDetails {
            text-align: left;
            font-size: 12px;
        }
        .CreditTotal {
            height:50px;
            border-bottom: 1px solid cornflowerblue;
            padding-bottom: 1px;
            text-align: center;
        }
        .LinesUnderText {
            height:50px;
            border-bottom: 1px solid cornflowerblue;
            padding-bottom: 5px;
            margin-left: 5%

        }
        .Transactions {
            padding-top: 20px;
        }
        .button {
            background-color: #4472C4;
            padding: 8px 16px;
        }
        .CreditTopUp {
            margin-left: 70%;
            margin-top: 1%;
        }
    </style>
</head>
<body>
<div class="header">

    <h1>Credit Balance<a href="StudentHomePage.php"><img style="float: right;" src=Picture2.png></a></h1>

    <p class="PersonDetails">Person_Name</p>
    <p class="PersonDetails">Year 9</p>
    <p class="PersonDetails">Class 9f</p>
    <a href="login.php"><button class ="buttonLogOut" >LogOut</button></a>

</div>
<div class="CreditTotal">
    <?php $CreditTotal = 50;?>
    <?php echo "<h1>£".$CreditTotal."</h1>"?>

</div>

<div class="CreditTopUp">
    <input style="margin-right: 1%; padding: 8px" type = "text">
    <button class ="button">Pay</button>
</div>

<div class="Transactions">

        <?php
        $Transactions = array("Bacon Roll", "Katsu Chicken", "Pasta");
        $price = array(5, 1.40, 4.89);

        for ($i = 0; $i <=2; $i ++)
        {
            echo "<span class='LinesUnderText'>";
            echo "<label style='font-size: 25px; '>".$Transactions[$i]."</label>";
            echo "<label style='float:right; margin-right: 60%; font-size: 25px'>£".$price[$i]."</label></span>";
            echo "<br>";
            echo "<br>";
            echo "</span>";
        }





        ?>
</div>

</body>
</html>