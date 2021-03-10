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

    <h1>Staff Home Page<a href="TeacherHomePage.php"><img style="float: right;" src=Picture2.png></a></h1>

    <p class="PersonDetails">Person_Name</p>
    <p class="PersonDetails">IT Admin</p>
    <p class="PersonDetails">Admin</p>
    <a href="login.php"><button class ="buttonLogOut" >LogOut</button></a>

</div>

<div class="buttonCenter">

    <a href="StaffMyClasses.php" style="padding: 40px 66px" class="button">Classes</a>
    <a href="StaffMyDetails.php" class="button">My Details</a>
    <a href="StaffStudentList.php" class="button">Student List</a>
    <a href="StaffCreditBalance.php" class="button">Credit Balance</a>
    <a href="StaffStudentGrades.php" class="button">Student Grades</a>
    <a href="TeacherList.php" class="button">Teacher List</a>
    <a href="Classrooms.php" class="button">Classroom</a>

</div>


</body>
</html>
