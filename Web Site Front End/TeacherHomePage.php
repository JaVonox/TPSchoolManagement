<!DOCTYPE html>
<?php include "Scripts/PageAccessVerify.php";
PageCheck(array("Teacher"));
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

    <h1>Teacher Home Page</h1>
    <a href="TeacherHomePage.php"><img style="float: right;" src=Picture2.png></a>
<?php include "PageElements/LoggedInBox.php"?>

</div>

<div class="buttonCenter">

    <a href="TeacherMyClasses.php" class="button">My Classes</a>
    <a href="TeacherMyDetails.php" class="button">My Details</a>
    <a href="StudentList.php" class="button">Student List</a>
    <a href="TeacherCreditBalance.php" class="button">Credit Balance</a>
    <a href="TeacherStudentGrades.php" class="button">Student Grades</a>
    <a href="Classrooms.php" class="button">Classrooms</a>
	<a href="TeacherTimetable.php" class="button">My Timetable</a>

</div>


</body>
</html>
