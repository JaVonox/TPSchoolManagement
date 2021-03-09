<!DOCTYPE html>
<html>
<head>
    <style>
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

    <h1>Teacher Home Page<a href="TeacherHomePage.php"><img style="float: right;" src=Picture2.png></a></h1>

    <p class="PersonDetails">Person_Name</p>
    <p class="PersonDetails">Head of English</p>
    <p class="PersonDetails">Teacher</p>
    <a href="login.php"><button class ="buttonLogOut" >LogOut</button></a>

</div>

<div class="buttonCenter">

    <a href="MyClasses.php" class="button">My Classes</a>
    <a href="TeacherMyDetails.php" class="button">My Details</a>
    <a href="StudentList.php" class="button">Student List</a>
    <a href="TeacherCreditBalance.php" class="button">Credit Balance</a>
    <a href="TeacherEditGrades.php" class="button">Student Grades</a>
    <a href="TeacherClassroom.php" class="button">Classroom</a>

</div>


</body>
</html>