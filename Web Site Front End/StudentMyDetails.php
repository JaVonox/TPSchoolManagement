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
    <a href="StudentHomePage.php"><img style="float: right;" src=Picture2.png></a>
	<?php include "PageElements/LoggedInBox.php"?>

</div>
<div class="Details">
    <!---Used php so that its easier for you to add database entries. Just change values to Database values--->
	<?php
			$dataGetter = new UserInteractionHandler();
			$Information = $dataGetter->PullStudentDetails($_SESSION['Login'],$_SESSION['Type']);
			
			$FullName = $Information['Name'];
			$Sex = $Information['Sex'];
			$SDate = $Information['Start Date'];
            $DateOfBirth = date("d-m-Y",strtotime($Information['Date Of Birth']));
            $Address = $Information['Address'];
			$Medical = $Information['Medical Information'];
			$Comments = $Information['Comments'];
			$Class = $Information['Class'];
			$Year = $Information['Year'];
			
			$GName = $Information['GName'];
			$GAddress = $Information['GAddress'];
			$GPhone = $Information['GPhone Number'];
			$GComments = $Information['GComments'];
			$GRelation = $Information['GRelationship'];
            
    ?>
    <span class ="LinesUnderText">
		If this data is incorrect and needs updating, contact your school immediately.
		<br>
		<h4>Personal Information:</h4>
        Full Name: <?php echo "<label style='font-weight: normal'>".$FullName."</label>"?>
    <br>
        Date Of Birth: <?php echo "<label style='font-weight: normal'>".$DateOfBirth."</label>"?> 
	<br>
		Sex: <?php echo "<label style='font-weight: normal'>".$Sex."</label>"?>
    <br>
        Address: <?php echo "<label style='font-weight: normal'>".$Address."</label>"?>
    <br>
		Medical Information: <?php echo "<label style='font-weight: normal'>".$Medical."</label>"?>
    <br>
		Additional Comments: <?php echo "<label style='font-weight: normal'>".$Comments."</label>"?>
    <br>
		<h4>Guardian Information:</h4>
        Relationship: <?php echo "<label style='font-weight: normal'>".$GRelation."</label>"?> 
	<br>
		Full Name: <?php echo "<label style='font-weight: normal'>".$GName."</label>"?>
	<br>
		Address: <?php echo "<label style='font-weight: normal'>".$GAddress."</label>"?> 
	<br>
		Phone Number: <?php echo "<label style='font-weight: normal'>".$GPhone."</label>"?>
    <br>
		Additional Comments: <?php echo "<label style='font-weight: normal'>".$GComments."</label>"?>
    <br>
		<h4>Class Information:</h4>
		Class: <?php echo "<label style='font-weight: normal'>".$Class."</label>"?> 
	<br>
		Year: <?php echo "<label style='font-weight: normal'>".$Year."</label>"?>
	<br>
		Start Date: <?php echo "<label style='font-weight: normal'>".$SDate."</label>"?>
	
	
	
    
    </span>
</div>
</body>
</html>