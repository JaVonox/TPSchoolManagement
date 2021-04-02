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
            color: white;
            padding: 40px 50px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 5%;
            cursor: pointer;
        }

        body {
            margin: 0;
        }
        .PersonDetails {
            text-align: left;
            font-size: 12px;
        }
        .buttonCenter {
            margin:0 auto;
        }
        .buttonLogOut {
            background-color: lightblue;
            padding: 3px 8px;
            margin-right: 100%;
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

</div>


</body>
</html>