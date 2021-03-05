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

    <h1>Student Home Page<a href="StudentHomePage.php"><img style="float: right;" src=Picture2.png></a></h1>

    <p class="PersonDetails">Person_Name</p>
    <p class="PersonDetails">Year 9</p>
    <p class="PersonDetails">Class 9f</p>
    <a href="login.php"><button class ="buttonLogOut" >LogOut</button></a>

</div>

<div class="buttonCenter">

    <a href="StudentMyGrades.php" class="button">My Grades</a>
    <a href="MyDetails.php" class="button">My Details</a>
    <a href="StudentAssessments.php" class="button">Assessments</a>
    <a href="CreditBalance.php" class="button">Credit Balance</a>

</div>


</body>
</html>