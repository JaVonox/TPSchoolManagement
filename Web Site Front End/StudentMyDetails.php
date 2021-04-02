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
            padding-bottom: 5px;
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
			$teacherDetails = $dataGetter->PullPersonDetails($_SESSION['Login'],$_SESSION['Type']);
			
			$FullName = $teacherDetails['Name'];
            $DateOfBirth = date("d-m-Y",strtotime($teacherDetails['Date_Of_birth']));
            $ParentGuardianPhoneNumber = $teacherDetails['Phone_Number'];
            $StudentSubjects = "??";
    ?>
    <span class ="LinesUnderText">
        Full Name: <?php echo "<label style='font-weight: normal'>".$FullName."</label>"?>
    <br>
    <br>
        Date Of Birth: <?php echo "<label style='font-weight: normal'>".$DateOfBirth."</label>"?>
    <br>
    <br>
        Parent/Guardian Phone Number: <?php echo "<label style='font-weight: normal'>".$ParentGuardianPhoneNumber."</label>"?>
    <br>
    <br>
        Student Subjects: <?php echo "<label style='font-weight: normal'>".$StudentSubjects."</label>"?>
    </span>
</div>
</body>
</html>