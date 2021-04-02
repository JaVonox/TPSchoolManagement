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
    <a href="Classrooms.php" class="button">Classroom</a>

</div>


</body>
</html>