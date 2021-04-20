<!DOCTYPE html>
<?php 
include_once "Scripts/PageAccessVerify.php";
PageCheck(array("Teacher"));
?>
<html lang="English">
<head>
    <style>
        <?php include "CSS/Header.css"?>

        body {
            margin: 0;
        }

        .PersonDetails {
            text-align: left;
            font-size: 12px;
        }
        .buttonLogOut {
            background-color: lightblue;
            padding: 3px 8px;
            margin-right: 100%;
        }
        .Details {
            font-weight: bold;
            font-size: 30px;
            margin: 20px;
        }
        .LinesUnderText {
            height:50px;
            border-bottom: 1px solid cornflowerblue;
            padding-bottom: 1px;
        }
    </style>
</head>
<body>
<div class="header">

    <h1>My Details</h1>
    <a href="TeacherHomePage.php"><img style="float: right;" src=Picture2.png></a>
	<?php include "PageElements/LoggedInBox.php";?>

</div>
<div class="Details">
    <!---Used php so that its easier for you to add database entries.--->
    <?php   
			$dataGetter = new UserInteractionHandler();
			$Information = $dataGetter->PullTeacherDetails($_SESSION['Login'],$_SESSION['Type']);
			
			$FullName = $Information['Name'];
			$Sex = $Information['Sex'];
			$SDate = $Information['Start Date'];
            $DateOfBirth = date("d-m-Y",strtotime($Information['Date Of Birth']));
            $Address = $Information['Address'];
			$Medical = $Information['Medical Information'];
			$Comments = $Information['Comments'];
			$Phone = $Information['Phone_Number'];
			
			$Salary = $Information['Salary'];
			$Education = $Information['Education'];
			$Work = $Information['Work'];
			$NI = $Information['NI'];
			$Tax = $Information['Tax'];
			$Bank = $Information['Bank'];
			$Department = $Information['Department'];
			$Leading = $Information['Leading'];
			
    ?>
    <span class ="LinesUnderText">
	If this data is incorrect and needs updating, contact your school immediately.
		<br>
		<h4>Personal Information:</h4>
        Full Name: <?php echo "<label style='font-weight: normal'>".$FullName."</label>"?>
    <br>
        Sex: <?php echo "<label style='font-weight: normal'>".$Sex."</label>"?>
	<br>
		Date Of Birth: <?php echo "<label style='font-weight: normal'>".$DateOfBirth."</label>"?> 
    <br>
        Address: <?php echo "<label style='font-weight: normal'>".$Address."</label>"?>
    <br>
		Phone Number: <?php echo "<label style='font-weight: normal'>".$Phone."</label>"?>
	<br>
		Medical Information: <?php echo "<label style='font-weight: normal'>".$Medical."</label>"?>
    <br>
		Additional Comments: <?php echo "<label style='font-weight: normal'>".$Comments."</label>"?>
    <br>
	
		<h4>Teacher Information:</h4>
		Department: <?php echo "<label style='font-weight: normal'>".$Department."</label>"?> 
	<br>
		Leader of: <?php echo "<label style='font-weight: normal'>".$Leading."</label>"?>
	<br>
		Start Date: <?php echo "<label style='font-weight: normal'>".$SDate."</label>"?>
	<br>	
        <h4>Employment Information:</h4>
		Salary: <?php echo "<label style='font-weight: normal'>".$Salary."</label>"?> 
	<br>
		National Insurance: <?php echo "<label style='font-weight: normal'>".$NI."</label>"?>
	<br>
		Tax Code: <?php echo "<label style='font-weight: normal'>".$Tax."</label>"?>
    <br>
		Bank Details: <?php echo "<label style='font-weight: normal'>".$Bank."</label>"?>
	<br>
		Education: <?php echo "<label style='font-weight: normal'>".$Education."</label>"?>
    <br>
		Previous Work: <?php echo "<label style='font-weight: normal'>".$Work."</label>"?>
    </span>
</div>
</body>
</html>