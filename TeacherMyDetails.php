<!DOCTYPE html>
<?php 
include_once "Scripts/PageAccessVerify.php";
PageCheck(array("Teacher"));
?>
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

    <h1>My Details<a href="TeacherHomePage.php"><img style="float: right;" src=Picture2.png></a></h1>

	<?php include "PageElements/LoggedInBox.php";?>

</div>
<div class="Details">
    <!---Used php so that its easier for you to add database entries.--->
    <?php   
			$dataGetter = new UserInteractionHandler();
			$teacherDetails = $dataGetter->PullPersonDetails($_SESSION['Login'],$_SESSION['Type']);
			
			$FullName = $teacherDetails['Name'];
            $DateOfBirth = date("d-m-Y",strtotime($teacherDetails['Date_Of_birth']));
            $PhoneNumber = $teacherDetails['Phone_Number'];
            $Role = $teacherDetails['Role'];
    ?>
    <span class ="LinesUnderText">
        Full Name: <?php echo "<label style='font-weight: normal'>".$FullName."</label>"?>
    <br>
    <br>
        Date Of Birth: <?php echo "<label style='font-weight: normal'>".$DateOfBirth."</label>"?>
    <br>
    <br>
        Phone Number: <?php echo "<label style='font-weight: normal'>".$PhoneNumber."</label>"?>
    <br>
    <br>
        Title: <?php echo "<label style='font-weight: normal'>".$Role."</label>"?>
    </span>
</div>
</body>
</html>