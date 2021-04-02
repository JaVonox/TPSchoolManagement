<!DOCTYPE html>
<?php include "Scripts/PageAccessVerify.php";
PageCheck(array("Student"));
?>
<html lang="English">
<head>
    <style>
        <?php include "CSS/Header.css"?>

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

    <h1>Credit Balance</h1>
    <a href="StudentHomePage.php"><img style="float: right;" src=Picture2.png></a>
	<?php include "PageElements/LoggedInBox.php"?>

</div>
<div class="CreditTotal">
<?php 
	
	$id = $_SESSION['Login'];
	$fetcher = new UserInteractionHandler();
	$balance = $fetcher->PullBalance($id);
	echo "<h1>£".$balance[0]['Balance']."</h1>";
	echo "<h2>Last Top Up: ".$balance[0]['Last_Top_Up']."</h2>";
	$transactions = $fetcher->PullTransactions($id);
	
?>

</div>

<div class="CreditTopUp">
    <!---Button and input box to top up their credit total--->
    <input style="margin-right: 1%; padding: 8px" type = "text">
    <button class ="button">Pay</button>
</div>

<div class="Transactions">

<?php
  
        for ($i = 0; $i <count($transactions); $i++)
        {
            echo "<span class='LinesUnderText'>";
            echo "<label style='font-size: 25px; '>".$transactions[$i]['Date_Of_Transaction']."</label>";
            echo "<label style='float:right; margin-right: 60%; font-size: 25px'>£".$transactions[$i]['Transaction_Value']."</label></span>";
            echo "<br>";
            echo "<br>";
            echo "</span>";
        }

?>

</div>

</body>
</html>