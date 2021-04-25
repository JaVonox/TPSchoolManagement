<!DOCTYPE html>
<?php include "Scripts/PageAccessVerify.php";
PageCheck(array("Teacher"));
?>
<html lang="English">
<head>
    <style>
        <?php include "CSS/Header.css"?>
        body {
            margin: 0;
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
            border-radius: 5px;
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 17px;
            cursor: pointer;
            font-family: Lato, sans-serif;
            padding: 8px 16px;
            border-style: hidden;
        }
        .CreditTopUp {
            margin-left: 80%;
            margin-top: 1%;
        }
    </style>
</head>
<body>
<div class="header">

    <h1>Credit Balance</h1>
    <a href="TeacherHomePage.php"><img style="float: right;" src=Picture2.png></a>
	<?php include "PageElements/LoggedInBox.php"?>

</div>
<div class="CreditTotal">

<?php 
	$id = $_SESSION['Login'];
	$fetcher = new UserInteractionHandler();
	$topup = "";
	
	if (isset($_POST['newbalance']))
	{
		$topup = $fetcher->AddToBalance($id, $_POST['newbalance']);
	}
	
	$balance = $fetcher->PullBalance($id);
	echo "<h1>£".$balance[0]['Balance']."</h1>";
	echo "<h2>Last Top Up: ".$balance[0]['Last_Top_Up']."</h2>";
	$transactions = $fetcher->PullTransactions($id);
	
?>

</div>

<form Name ="form" Method ="POST" ACTION = "TeacherCreditBalance.php" class="CreditTopUp">
    <!---Button and input box to top up their credit total--->
    <input Name="newbalance" placeholder="Amount to add" style="padding: 8px" type = "text"/>
    <input type = "submit" value = "Top up" Name= "Top Up" class ="button"/>
	<?php echo "<p>". $topup . "</p>"; ?>
</form>

<div class="Transactions">

<?php
  
        for ($i = 0; $i <count($transactions); $i++)
        {
            echo "<span class='LinesUnderText'>";
            echo "<label style='font-size: 25px; '>".$transactions[$i]['Date_Of_Transaction']."</label>";
            echo "<label style='padding-left: 500px; font-size: 25px'>£".$transactions[$i]['Transaction_Value']."</label></span>";
            echo "<br>";
            echo "<br>";
            echo "</span>";
        }

?>
</div>
</body>
</html>