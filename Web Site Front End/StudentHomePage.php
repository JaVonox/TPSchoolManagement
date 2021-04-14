<!DOCTYPE html>
<?php include "Scripts/PageAccessVerify.php";
PageCheck(array("Student"));
?>
<html>
<head>
    <style>
        <?php include "CSS/Header.css"?>
        .button {
            background-color: #4472C4;
            border-radius: 25px;
            color: white;
            padding: 55px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 17px;
            margin: 5%;
            cursor: pointer;
            font-family: Lato, sans-serif;
            width: 8%;
        }

        body {
            margin: 0;
        }
        .buttonCenter {
            margin:0 auto;
        }

    </style>
</head>
<body>
<div class="header">

    <h1>Student Home Page</h1>
    <a href="StudentHomePage.php"><img style="float: right;" src=Picture2.png></a>
	<?php include "PageElements/LoggedInBox.php"?>

</div>

<div class="buttonCenter">

    <a href="StudentMyGrades.php" class="button">My Grades</a>
    <a href="StudentMyDetails.php" class="button">My Details</a>
    <a href="StudentAssessments.php" class="button">Assessments</a>
    <a href="StudentCreditBalance.php" class="button">Credit Balance</a>
	<a href="StudentTimetable.php" class="button">Timetable</a>
</div>


</body>
</html>